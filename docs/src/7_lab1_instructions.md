# Assignment 1

For this assignment, we will be analyzing data from the [Gaia mission](https://new.esa.int/missions/about-us/directorates/science/gaia/gaia), which is led by the European Space Agency. Gaia is a space observatory that for slightly over a decade obtained precise measurements of the sky location of over a billion stars mostly within our own Galaxy, allowing the measurement of their parallaxes as well as their proper motions relative to us. You can use the intro slides of this class for information on parallaxes and magnitudes. We will make use of the Gaia query system that allows us to programatically request data from the Gaia mission. A brief discussion of the lab content has been provided in the recording of class 6.

This assignment is due on the 28th of November 2026 at 23:59 Central European Time. It should be formatted as a short report of no more than five pages provided in pdf format to `pablo.marchant@ugent.be`. The exact formatting of the report (single/double column and font size) is left to the student to decide, but consider that it is not a requirement to fill all allocated space and conciseness is valued. Be sure that all your figures and text have a readable size.

There are three different parts to this assignment, the first two correspond to 1 point while the third one corresponds to 2 points of the grade for a total of 4.

## Our local vicinity (1 point)

We will first explore the local vicinity of the Sun and construct a color-magnitude diagram of nearby stars, also known as the Hertzsprung-Russel (HR) diagram. For reference, you can see how this diagram looks from a much larger sample of Gaia stars [here](https://sci.esa.int/web/gaia/-/60198-gaia-hertzsprung-russell-diagram). We will make use of the apparent magnitudes in the G, BP and RP bands together with measured parallaxes to infer the absolute magnitudes of each star in our sample, from which we will be able to plot our own color-magnitude diagram.

In order to access the data of nearby stars from the Gaia mission we will look for sources that exhibit a parallax above $20$ milliarcseconds (mas). From the definition of a parsec, a source that exhibits a parallax of one arcsecond is one parsec away, meaning that a source with a parallax of $20$ mas is at a distance of $(1/20)\times 1000\,[\mathrm{pc}] = 50\,[\mathrm{pc}]$, and stars with larger parallaxes will be closer. The way we access the Gaia data is through the `VirtualObservatory` package, using the astronomical data query language (adql):

```julia
using VirtualObservatory
using DataFrames

# Use the predefined gaia TAP service
service = VirtualObservatory._TAP_SERVICES[:gaia]

# Build the query
adql_query = """
SELECT
    source_id, ra, dec, parallax, parallax_error, parallax_over_error, phot_g_mean_mag, phot_bp_mean_mag, phot_rp_mean_mag
FROM 
    gaiadr3.gaia_source
WHERE 
    parallax IS NOT NULL AND phot_g_mean_mag IS NOT NULL AND phot_bp_mean_mag IS NOT NULL AND phot_rp_mean_mag IS NOT NULL AND parallax > 20 AND parallax_over_error > 100
"""

# Execute the query
result_table = execute(service, adql_query, strict=false)

# Turn result into a dataframe
df = DataFrame(result_table)
```

What we are doing here is extracting a certain set of values (under the `SELECT` block) from the database `gaiadr3.gaia_source` with a set of conditions specified in the `WHERE` block. For a full list of the available values and their precise definitions you can look [here](https://gaia.aip.de/metadata/gaiadr3/gaia_source/). **Beware that the `execute` command can fail due to server side issues, if this happens wait a couple of seconds and rerun it**. In particular we are filtering for solutions with the desired parallax, but also requiring a very small error in the parallax (all other conditions are just to verify that the data is ok). From the data frame we can extract vectors with the data that we need:

```julia
parallax = [df[i, :parallax].val for i in 1:nrow(df)] # in milliarcsecond

# apparent magnitudes in the g, bp and rp bands
g_mag = [df[i, :phot_g_mean_mag].val for i in 1:nrow(df)]
bp_mag = [df[i, :phot_bp_mean_mag].val for i in 1:nrow(df)]
rp_mag = [df[i, :phot_rp_mean_mag].val for i in 1:nrow(df)]
```

Normally with a data frame one can work directly on the data, but values provided from the Gaia service include units and can be cumbersome to operate with. Using `val` allows us to extract the floating point numbers describing each property.

Making use of this, answer the following questions:
- What is the distance to the closest star to the Sun in the Gaia dataset? Assuming it has the same mass as the Sun, how does the gravitational force it exerts on the surface of the Sun compare to that of the Sun itself?
- Plot the HR diagram of stars in the Solar vicinity by determining the absolute magnitudes of each star in each band. You can use the HR diagram constructed by the Gaia mission [here](https://sci.esa.int/web/gaia/-/60198-gaia-hertzsprung-russell-diagram) as a reference. Include the Sun in this diagram, which has absolute magnitudes $\text{G}_\odot=4.67$, $\text{BP}_\odot=5.0$ and $\text{RP}_\odot=4.18$, and identify the main-sequence, giant branch, and white dwarfs in the figure.
- Under the rough approximation that stars radiate as black bodies, stars with the same color $\text{BP-RP}$ have the same effective temperature $T_\mathrm{eff}$. This temperature is related to to their surface flux by the Stefan-Boltzmann law, $F=\sigma T_\text{eff}^4$. Consider the sun, for which we know its radius, and determine the typical difference it has in absolute $G$ band luminosity with white dwarfs in the solar vicinity that have the same color $\text{BP-RP}$. Use this to estimate the radius of those white dwarfs.

## Masses and luminosities of stars (1 point)

Gaia also includes a set of derived parameters that use the Final Luminosity, Age and Mass Estimator tool [(FLAME)](https://www.aanda.org/articles/aa/full_html/2023/01/aa44283-22/aa44283-22.html). This provides an estimate on physical properties of interest beyond just the colors, but are only available for a subset of stars. Our query can be adjusted to provide the sources that have this estimate:

```julia
# Build the query
adql_query = """
SELECT
    gaia.source_id, gaia.ra, gaia.dec, gaia.parallax, gaia.parallax_error, gaia.parallax_over_error, gaia.phot_g_mean_mag, gaia.phot_bp_mean_mag, gaia.phot_rp_mean_mag, params.mass_flame, params.teff_gspphot, params.lum_flame
FROM 
    gaiadr3.gaia_source as gaia
JOIN
    gaiadr3.astrophysical_parameters AS params USING (source_id)
WHERE 
    parallax IS NOT NULL AND phot_g_mean_mag IS NOT NULL AND phot_bp_mean_mag IS NOT NULL AND phot_rp_mean_mag IS NOT NULL AND parallax > 20 AND parallax_over_error > 100 AND mass_flame IS NOT NULL
"""

# Execute the query
result_table = execute(service, adql_query, strict=false)

# Turn result into a dataframe
df = DataFrame(result_table)
```

A full list of these additional parameters can be found [here](https://gaia.aip.de/metadata/gaiadr3/astrophysical_parameters/).

- Using this data, estimate the mass luminosity relationship as a power law $L\propto M^{\alpha}$ and estimate $\alpha$. Use a figure to visualize this relationship (tip: it can be useful to think of $\log_{10}(L/L_\odot)$ and $\log_{10}(M/M_\odot)$ instead).
- Ignoring potential variations in luminosity as a function of age, estimate the main-sequence lifetime of the stars in the sample by assuming all their luminosity is provided by core-hydrogen burning, and that ~10\% of the total mass of the star is available for nuclear burning. Visualize the relationship between main-sequence lifetime and mass.

## Co-eval populations in open clusters (2 points)

Stars in the vicinity of the Sun exhibit a large variation in ages, as they are not related to a single burst of star formation. However, stellar associations such as open clusters and globular clusters do contain stars of well defined and shared ages. As such, they are excellent laboratories to study stellar evolution, as they allow us to get a snapshot of stars of different masses but with a fixed age. The objective of this part will be to identify stars within three open clusters with a diversity of ages, and see how age is imprinted in the HR diagram. The three clusters that we will study and their coordinates in right ascension and declination are:

- The Pleaiades
  - RA: 3h 46' 38''
  - DEC: 24$^\circ$ 10'' 41'
- The Beehive Cluster
  - RA: 8h 40.4''
  - DEC: 19$^{\circ}$ 59'
- Messier 67
  - RA: 8h 51.3'
  - DEC: 11$^{\circ}$ 48'

These clusters were chosen to represent a varied range in ages, while being clusters that do not exhibit significant extinction due to interstellar matter. In the case where extinction is significant, one would need to account for it in the conversion from apparent to absolute magnitudes.

You can also construct a query that looks for objects around a point in the sky. For instance, the following query will look for sources in a circle of 1.5 degrees around the coordinates of the Pleiades:

```julia
radius  = 1.5        # Degrees
inp_ra  = (3+46/60+38/3600)*360/24#56.87125   # Degrees
inp_dec = (24+10/60+41/3600)#24.10493   # Degrees

adql_query = """
SELECT
    source_id, ra, dec, pmra, pmdec, parallax, parallax_error, parallax_over_error, phot_g_mean_mag, phot_bp_mean_mag, phot_rp_mean_mag
FROM 
    gaiadr3.gaia_source
WHERE 
    parallax IS NOT NULL AND phot_g_mean_mag IS NOT NULL AND phot_bp_mean_mag IS NOT NULL AND phot_rp_mean_mag IS NOT NULL AND parallax_over_error > 10 AND ruwe < 1.4 AND 1=CONTAINS(POINT($(inp_ra), $(inp_dec)),CIRCLE(ra, dec, $(radius)))
"""

result_table = execute(service, adql_query, strict=false)
df = DataFrame(result_table)
```
However, this will have significant contamination from foreground and background stars that are not associated to the cluster. One can use the parallax, as well as proper motion information, to identify cluster members.

- By checking the parallaxes and proper motions `pmdec` and `pmra`, find a filter that allows you to isolate the cluster members for each of the clusters listed above. You can see the recording of class 6 as a guide. You can look for literature estimates of the distance to each cluster to confirm a correct identification.
- Construct HR diagrams for all three clusters and overplot them together, including the location of the Sun. How does the main sequence differ between clusters? Based on this, which cluster of the three is the youngest and which is the oldest?