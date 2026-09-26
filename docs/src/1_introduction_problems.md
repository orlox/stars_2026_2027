# Exercises

## List of exercises

### 1: Timescales of stellar evolution

There are three main timescales in which stars evolve. These are the dynamical,
thermal and nuclear timescales. Even without knowing the equations of stellar
structure and evolution we can do some estimates on the value of these
quantities. Compute these without a calculator! We only care about the order of
magnitude of these timescales, which given all the approximations done is all we
can do. For solar properties, use the following for the mass, radius and
luminosity:

$$R_\odot\sim 7\times 10^{10}\;\mathrm{[cm]},\quad M_\odot \sim 2\times 10^{33}\;\mathrm{[g]},\quad L_\odot \sim 4\times 10^{33}\;\mathrm{[erg\;s^{-1}]}$$

- Thermal timescale: One of the main early hypothesis to explain the energy
    source of the Sun was that it originated from its slow contraction into its own
    gravitational potential. In such a case, a rough estimate of the energy the Sun
    would have radiated through its life is given by the negative of the
    gravitational potential energy $E_\mathrm{g}$:

    $$E_\mathrm{g} \sim \displaystyle -\frac{GM_\odot^2}{R_\odot}.$$

    Assuming that the luminosity of the Sun has always been its current one,
    $L_\odot$, compute the age of the Sun under the assumption that it is only
    powered by contraction. You can use $G\sim 6\times 10^{-8} \,\mathrm{cm^3\,g^{-1}\,s^{-2}}$

- Dynamical timescale: For most of their lives stars are very close to
    hydrostatic equilibrium, carefully balancing their gravities against the support
    of a pressure gradient. Whenever these two forces are misbalanced, the star will
    evolve in what is known as the dynamical timescale. Estimate this timescale by
    computing the time it would take for the surface of the sun to free-fall all the
    way to its center if all forces opposing gravity would be removed. For
    simplicity assume that the gravitational acceleration is constant and equal to
    its present one.

- Nuclear timescale: As we now know, most stars are powered by nuclear
    reactions. Masses of isotopes are normally given in terms of the atomic mass
    unit $m_\mathrm{u}=1.661\times 10^{-24}\;\mathrm{g}$, defined as $1/12$ of the
    mass of a carbon-12 atom. The mass of a hydrogen atom is
    $m_\mathrm{H}=1.007825m_\mathrm{u}$ and that of a helium atom is
    $m_\mathrm{He}=4.002602 m_\mathrm{u}$, such that if four hydrogen atoms are
    fused into a helium atom there is a mass deficit leading to a release of energy
    $(4m_\mathrm{H}-m_\mathrm{He})c^2\sim 4\times 10^{-5}\;\mathrm{[erg]}$. With
    this information, estimate the lifetime of the Sun as a core-hydrogen burning
    star. For simplicity, assume the Sun has a constant luminosity and is entirely
    composed of hydrogen, 10% of which is burned into Helium during core-hydrogen
    burning.

### 2: Constant density star 
Consider a star with constant density,

$$\rho(m)=\rho_\mathrm{c},\quad m(r) =\frac{4\pi}{3}r^3 \rho_\mathrm{c}.$$

Use the equation of hydrostatic equilibrium in its Eularian form,

$$\frac{\partial P}{\partial r} = -\rho g=-\frac{\rho G m(r)}{r^2},$$

to obtain the interior pressure of the star as a function of the central pressure $P_\mathrm{c}$ and $r/R$, where $R$ is the total radius of the star. Assume that the pressure at the surface of the star is much smaller than the central pressure.

### 3: Lower bound on central pressure of the Sun
Using the Lagrangian form of the equation of hydrostatic equilibrium,

$$\frac{\partial P}{\partial m}=-\frac{Gm}{4\pi r^4},$$

place a lower bound on the central pressure of the sun by making use of the basic property that anywhere within the stellar interior we have that $r<R_\odot$.

### 4: Dynamical instability

Consider a polytropic equation of state of the form

$$P = K \rho^\gamma,$$

where $K$ is a constant. If the density of a fluid element is perturbed slightly by an amount $\delta \rho\ll\rho$, then the pressure is perturbed by an amount

$$P_0+\delta P = K (\rho_0+\delta\rho)^\gamma \simeq K\rho_0^\gamma\left(1+\frac{\gamma \delta\rho}{\rho_0}\right),$$

where $P_0$ and $r_0$ are the unperturbed values of pressure and density. It follows that the perturbations on density and pressure can be related to each other:

$$\frac{\delta P}{P_0}=\gamma\frac{\delta \rho}{\rho_0}.$$

Using this answer the following questions:

- If the radii $r_0(m)$ of each mass shell in a star is perturbed by $\delta r=\alpha r_0$ (where $\alpha\ll 1$ is a small positive number independent of $m$), show that the stellar density is perturbed at each point by an amount $\delta \rho/\rho_0=-3\alpha$ at each point of the star. To do this, take the continuity equation of the unperturbed fluid,  

    $$\displaystyle\frac{\partial r_0}{\partial m}=\frac{1}{4\pi\rho_0 r_0^2},$$

    and find $\delta \rho/\rho_0$ from its perturbed form  

    $$\displaystyle\frac{\partial (r_0+\alpha r_0)}{\partial m}=\frac{1}{4\pi(\rho_0+\delta \rho) (r_0+\alpha r_0)^2},$$

    by ignoring perturbation terms of quadratic order.

- Assume the unperturbed star is in hydrostatic equilibrium,  

    $$\displaystyle\frac{1}{4\pi r_0^2}a_r=-\frac{\partial P_0}{\partial m}-\frac{G m}{4\pi r_0^4}=0,$$

    where $a_r$ is the radial component of the acceleration. Compute the resulting acceleration after the perturbation $\delta r=\alpha r_0$. For which values of $\gamma$ does the resulting acceleration point inwards or outwards? What does this say about stability?

### 5: Mass-Radius relationship for a polytrope

The structure of a star with a polytropic equation of state $P=K \rho^{1+1/n}$ can be computed using the Lane-Emden equation,

$$\frac{1}{z^2}\frac{d}{dz}\left(z^2\frac{d w_n}{d z}\right)=-w_n^n,$$

where

$$\rho=\rho_\mathrm{c}w_n^n, \quad P=P_c w_n^{1+n}, \quad r = r_n z, \quad r_n^2\equiv\frac{(n+1)P_\mathrm{c}}{4\pi G \rho_\mathrm{c}^2}.$$

The central boundary conditions for this equation are $w_n(0)=1$ and $w_n'(0)=0$, while the surface is defined by the first zero of $w_n$, at which point we define $z_1$ and $R=r_n z_1$.

- Show that the mass contained inside a given value of the coordinate $z$ is given by  
$m(z)=4\pi r_n^3 \rho_\mathrm{c}(-z^2 w_n'(z)).$
- Show that for an equation of state $P=K\rho^{5/3}$ higher mass stars have smaller radii.

## Solutions

### 1: Timescales of stellar evolution

- Thermal timescale:
    Assuming the Sun started its life as a diffuse expanded cloud, covering a distance much larger than its current radius, we can take its initial gravitational energy to be much smaller than the current one ($E_{g,\mathrm{i}}\ll E_g$). In that case the sun has radiated a total energy $\sim E_g$ and we can compute the time it has taken to do so dividing by its luminosity. The resulting timescale is known as the Kelvin-Helmholtz timescale,

    $$\displaystyle\tau_\mathrm{KH} = \frac{GM_\odot^2}{R_\odot L_\odot}\sim \frac{6\times 10^{-8} \cdot(2\times 10^{33})^2}{7\times 10^{10}\cdot 4\times 10^{33}} \;\mathrm{[s]}$$

    We care about orders of magnitude, so we can eliminate nearly equal factors,

    $$\displaystyle\tau_\mathrm{KH} \sim \frac{\cancel{6}\times 10^{-8} \cdot \cancel{4}\times 10^{66}}{\cancel{7}\times 10^{10}\cdot \cancel{4}\times 10^{33}} \;\mathrm{[s]} = 10^{15}\;\mathrm{[s]}$$

    That is a lot of seconds. It is easier to read in terms of years. Approximately, $1\,\mathrm{yr}=3\times 10^7\,\mathrm{s}$, so

    $$\displaystyle\tau_\mathrm{KH} \sim \frac{10^{15}}{3\times 10^{7}}\;\mathrm{[yr]} = \frac{1}{3}10^8\;\mathrm{[yr]}\sim 3\times 10^{7}\;\mathrm{yr},$$

    where I used that $1/3\sim 3\times 10^{-1}$. The thermal timescale is then of the order of tens of millions of years, much shorter than the age of the Sun. Before it was understood that the Sun was powered by hydrogen fusion it was the accepted model that gravitational contraction was its energy source, but as the age of the Earth became constrained through radiometric dating, it was seen that that could not possibly be the case. One small caveat that we will see later on is that part of the gravitational energy is not radiated, but rather heats up the star. However, this only lowers the timescale by a factor of $\sim 2$.

- Dynamical timescale: The surface gravity of the Sun is $g=GM_\odot/R_\odot^2$.
    An object falling during a time $t$ with a constant acceleration, and starting
    at rest, travels a distance

    $$\displaystyle d=\frac{1}{2}gt^2.$$

    We get the dynamical timescale by equating this to the solar radii, and naming the time $t$ as $\tau_\mathrm{dyn}$

    $$\displaystyle \tau_\mathrm{dyn}=\sqrt{\frac{2R_\odot}{g}}=\sqrt{\frac{2R_\odot^3}{GM_\odot}}.\tag{1}$$

    The ratio $M_\odot/R_\odot^3$ is (except for a constant factor), equal to the average density of the Sun $\langle \rho \rangle_\odot$, so often the dynamical timescale of a star is expressed as

    $$\displaystyle \tau_\mathrm{dyn}\sim\sqrt{\frac{1}{G\langle \rho \rangle_\odot}}$$

    Going back to Equation (1), let's evaluate it:

    $$\displaystyle \tau_\mathrm{dyn}\sim \sqrt{\frac{2\cdot 7^3\times 10^{30}}{6\times 10^{-8}\cdot 2\times 10^{33}}}\;\mathrm{[s]}.$$

    Again, we are doing an order of magnitude calculation, so we play a bit freely with elimination of terms,

    $$\displaystyle \tau_\mathrm{dyn}\sim\sqrt{\frac{\cancel{2}\cdot 7^{\cancel{3}2}\times 10^{30}}{\cancel{6}\times 10^{-8}\cdot \cancel{2}\times 10^{33}}}\;\mathrm{[s]}\sim \sqrt{7^2\times 10^5}\;\mathrm{[s]}.$$

    One can approximate $10^{0.5}\sim 3$ to obtain

    $$\displaystyle \tau_\mathrm{dyn}\sim 7\times 3\times 10^2.\;\mathrm{[s]}\sim 2\times 10^3\;\mathrm{[s]}$$

    Which is about half an hour. We see that the timescale for dynamical adjustments is dramatically lower than the timescale for thermal adjustments!

- Nuclear timescale: The number of hydrogen atoms that will be burned is given by

    $$\displaystyle N=0.1\frac{M_\odot}{m_\mathrm{H}}$$

    and the energy released per hydrogen atom that is burned is $10^{-5}\,\mathrm{erg}$. The Nuclear timescale can then be estimated as:

    $$\displaystyle \tau_\mathrm{nuc}=\frac{N\times 10^{-5}\,\mathrm{erg}}{L_\odot}.$$

    Let's evaluate this, using $m_\mathrm{H}\sim 2\times 10^{-24}$ for simplicity,

    $$\displaystyle \tau_\mathrm{nuc}\sim\frac{10^{-1}\cdot 2\times 10^{33}\cdot 10^{-5}}{2\times 10^{-24}\cdot 4 \times 10^{33}}\sim \frac{1}{2}\times 10^{18}\;\mathrm{[s]}.$$

    Again, that's a lot of seconds. Let's write it in years:

    $$\displaystyle \tau_\mathrm{nuc}\sim \frac{(1/2)\times 10^{18}}{3\times 10^{7}}\,\mathrm{[yr]}=\frac{1}{6}\times 10^{11}\;\mathrm{[yr]}\sim 20 \;\mathrm{Gyr}.$$

    Where I have expressed the final result in units of Gigayears (equal to $10^9$ years). Again, we see that this is very different from the other two timescales. These three timescales are the fundamental evolutionary timescales of stars, and as they differ significantly, it means that the rate of change of properties of a star can be very different depending on the nature of its evolution.


### 2: Constant density star

Using the expression of $m(r)$ we can write the hydrostatic equilibrium equation as,

$$\frac{\partial P}{\partial r} = -\frac{4\pi \rho_c^2 G}{3} r,$$

which can be integrated from the core to the surface

$$\int_0^R \frac{\partial P}{\partial r} dr = P_\mathrm{s} - P_\mathrm{c}=-\frac{4\pi \rho_c^2 G}{6} R^2.$$

Ignoring the surface pressure $P_\mathrm{s}$ we obtain the central density of the star

$$P_c = \frac{4\pi \rho_c^2 G}{6} R^2.$$

The pressure at an arbitrary radius can be obtained by changing the integration limits

$$\int_0^r \frac{\partial P}{\partial r} dr = P(r) - P_\mathrm{c},$$

which can be rewritten as

$$P(r) = -\frac{4\pi \rho_c^2 G}{6} (r^2-R^2)=P_\mathrm{c}(1-r^2/R^2).$$

### 3: Lower bound on central pressure of the Sun

We can integrate the equation over mass, again ignoring surface pressure:

$$\int_0^{M} \frac{\partial P}{\partial m} dm = -P_\mathrm{c}=-\int_0^{M} \frac{Gm}{4\pi r^4}$$

Since $r<R$, we can place a bound on the integral by replacing $r$ with $R$,

$$P_\mathrm{c} > \int_0^{M} \frac{Gm}{4\pi R^4}=\frac{GM^2}{8\pi R^4}.$$

It is quite common to write expressions like this for any star, but scaled to the properties of the Sun. We can do this by evaluating the expression for the solar radius and mass, while keeping the relevant power laws on mass and radius:

$$P_\mathrm{c}=\frac{GM_\odot^2}{8\pi R_\odot^4}\left(\frac{M}{M_\odot}\right)^2\left(\frac{R}{R_\odot}\right)^{-4}\simeq 4.5\times 10^{14}\;\mathrm{[dyne\;cm^{-2}]} \left(\frac{M}{M_\odot}\right)^2\left(\frac{R}{R_\odot}\right)^{-4}.$$

Considering one atmosphere is $\sim 10^6\;\mathrm{dyne\;cm^{-2}}$, this means the core of the sun has over eight orders of magnitude higher pressure than we get on our daily lives!

### 4: Dynamical instability

We start by noting that:

$$\frac{1}{(r_0+\alpha r_0)^2} = \frac{1}{r_0^2(1+\alpha)^2}=\frac{1-2\alpha}{r_0^2}$$

and

$$\frac{1}{\rho_0+\delta \rho} = \frac{1}{\rho_0(1+\delta \rho/\rho_0)}=\frac{1-\delta \rho/\rho}{\rho_0}.$$

The continuity equation then reads as

$$\frac{\partial r_0}{\partial m}(1+\alpha)=\frac{1}{4\pi r_0^2 \rho_0}(1-2\alpha)(1-\delta\rho/\rho_0),$$

and replacing $\partial r_0/\partial m$ with the unperturbed continuity equation, while ignoring quadratic perturbation terms, gives us the desired result:

$$\frac{\delta \rho}{\rho_0}=-3\alpha,$$

which as expected is negative (a lowering of density) with expansion. With this we immediately know that $\delta P/P_0=-3\alpha\gamma$. Next we want to obtain the sign of the acceleration after the perturbation,

$$\frac{1}{4\pi (r_0+\alpha r_0)^2}\frac{\partial^2 r_0}{\partial t^2} = -\frac{\partial P_0}{\partial m}(1-3\alpha\gamma) - \frac{Gm}{4\pi r_0^4}(1-4\alpha).$$

Since we only care about the sign of the acceleration, we don't need to expand the left-hand side further. For the right-hand side we use the equation of hydrostatic equilibrium for the unperturbed state to obtain:

$$\frac{1}{4\pi (r_0+\alpha r_0)^2}\frac{\partial^2 r_0}{\partial t^2} = \frac{Gm}{4\pi r_0^4}\times \alpha(4-3\gamma).$$

This implies that for expansion ($\alpha>0$) we will get an outwards acceleration if $\gamma<4/3$, which is an unstable situation. Conversely, if we had contraction ($\alpha<0$) we would obtain a negative acceleration.

### 5: Mass-Radius relationship for a polytrope

The mass of the star up to a certain radius can be obtained by integrating the continuity equation:

$$m(r)=\int_0^r 4\pi r^2 \rho dr.$$

Using $\rho = \rho_c w_n^n$ we find

$$m(r)=4\pi \rho_c \int_0^r r^2 w_n^n dr = 4\pi r_n^3 \rho_c \int_0^z z^2 w_n^ndz.$$

The integrand can be replaced using the Lane-Equation, which gives allows for immediate integration:

$$m(z)=4\pi r_n^3 \rho_c \int_0^z \frac{d}{d z}\left(-z^2 w_n'\right)=4\pi r_n^3 \rho_c (-z^2 w_n'),$$

giving the total mass when evaluated at $z=z_1$.

To obtain the mass-radius relationship, we note from the definition of $r_n$ that

$$R\propto r_n\propto \sqrt{\frac{P_\mathrm{c}}{\rho_c^2}}\propto \rho_c^{-1/2+1/2n},$$

and since $M\propto r_n^3\rho_c$ we get the scaling between mass and central density:

$$M\propto \rho_c^{-1/2+3/2n}.$$

Combining the equations for R and M we find that

$$R\propto M^\beta,\quad \beta=\frac{1-n}{3-n}.$$

A negative exponent, indicative of a decreasing radius with mass, happens between n=1 and 3.
One can use the case $n=0$, corresponding to constant density, as a validity check. What value of $\beta$ do you expect then?
An equation of state $P\propto \rho^{5/3}$ corresponds to $n=1.5$, and the above shows we expect more compact stars as mass increases.
As we will see in a few classes, this case corresponds to a fully degenerate non-relativistic gas, and can be used to describe the properties of white dwarfs. An equation of state $P\propto \rho^{4/3}$ corresponds to $n=3$, which we can see is a critical point where the above expression is undefined. Yet again, the $4/3$ value holds an important meaning!