# Exercises

# Exercises

## List of exercises

### 1: Homology for radiative energy transport

Given the equation for the temperature gradient in a region where energy is transported through radiation, we have that

$$\frac{dT^4}{dm}=-\frac{3\kappa l}{16\pi^2 a c r^4}.$$

Assuming an ideal gas law without radiation, and an opacity of
the form $\kappa=\kappa_0 \rho^aT^b$ (with $a$ and $b$ constant) show that two homologous stars of constant opacity (but not necessarily equal opacity between them) satisfy the relationship

$$\left(\frac{T_2(x)}{T_1(x)}\right)^4=\frac{l_2(x)}{l_1(x)}\frac{M_2}{M_1}\frac{\kappa_2}{\kappa_1}\left(\frac{R_2}{R_1}\right)^{-4}.$$

### 2: Homologous contraction

Consider the homology relations derived using the equation of continuity and the equation of hydrostatic equilibrium,

$$\frac{\rho_2(x)}{\rho_1(x)}=\frac{M_2}{M_1}\left(\frac{R_2}{R_1}\right)^{-3},\quad \frac{P_2(x)}{P_1(x)}=\left(\frac{M_2}{M_1}\right)^2\left(\frac{R_2}{R_1}\right)^{-4}.$$

These expressions can be used to describe a star contracting homologously with a fixed mass, meaning that $M_1=M_2$ and $R_1$ and $R_2$ represent the radii at two different stages of contraction. Show from this that as the star contracts homologously it satisfies

$$\frac{\dot{P}(m)}{P(m)}=-4\frac{\dot{R}}{R}=\frac{4}{3}\frac{\dot{\rho}(m)}{\rho(m)}.$$

Making use of the EOS quantities

$$\chi_T\equiv \left(\frac{\partial \ln P}{\partial \ln T}\right)_\rho, \quad \chi_\rho\equiv \left(\frac{\partial \ln P}{\partial \ln \rho}\right)_T,$$

show that

$$\frac{\dot{T}(m)}{T(m)}=\frac{1}{\chi_T}\left(\frac{4}{3}-\chi_\rho\right)\frac{\dot{\rho}(m)}{\rho(m)}=\frac{1}{\chi_T}\left(3\chi_\rho-4\right)\frac{\dot{R}}{R}.$$

What does this implies for the temperature of a star composed of an ideal gas? What about the temperature for a non-relativistic degenerate gas?

### 3: Homology with radiation pressure
The ideal gas law including gas pressure is given by

$$P=P_\mathrm{gas} + P_\mathrm{rad}=\frac{\rho}{\mu m_\mathrm{u}}k_\mathrm{B}T+\frac{aT^4}{3}.$$

The ratio between the gas pressure and the total pressure is denoted by $\beta$,

$$\beta\equiv \frac{P_\mathrm{gas}}{P}=1-\frac{P_\mathrm{rad}}{P}.$$

Often in class we worked by ignoring the radiation pressure term as a simplification. In this exercise the objective is to derive homology relationships which include radiation pressure.

1. Show that the equation of state can be rewritten as
   $$P=C\left(\frac{\rho}{\mu}\right)^{4/3}[f(\beta)]^{1/3},\quad f(\beta)=\frac{1-\beta}{\beta^4},$$
   where $C$ is a combination of fundamental constants.
2. In his pioneering work on stellar structure, prior to computers being capable to integrate the equations of stellar structure, sir Arthur Eddington managed to construct stellar models by making the assumption that stars have a constant value of $\beta$. This was strongly criticized at the time, as it was not a well justified assumption, but turned out to produce quite valuable models. Explain why this assumption makes it easier to compute the structure of a stellar model (Tip: don't overthink it, this can be answered in one or two sentences).
3. In class we derived homology relationships for $\rho$, $P$ and $T$ by applying respectively the equations of continuity, hydrostatic equilibrium and an ideal gas law without radiation pressure. These homology relationships relate the properties of homologous models at the same relative mass coordinate $x=m/M$ in terms of the total mass, radius, and composition of the star.
   To obtain a more general result which does not ignore radiation pressure, use the relationship shown above for $P=P(\rho,\mu,\beta)$ to derive a homology relationship for $f(\beta)$ arising from combining the equation of continuity, the equation of hydrostatic equilibrium and the ideal gas law with radiation pressure included.
4. The function $f(\beta)$ is a monotonically decreasing function in the range $0<\beta<1$. Using the homology relationship derived in the previous part, determine if more massive stars have a larger contribution to their total pressure coming from radiation.

### 4: Chemically homogeneous evolution
It is currently thought that massive stars with high rotation rates experience significant mixing due to meridional circulations in their radiative envelopes. Due to this their abundance remains constant throughout the stellar interior rather than developing a hydrogen poor core with a hidrogen rich envelope, a form of evolution known as chemically homogeneous. Consider a $30M_\odot$ star, which from a MESA model at solar metallicity has a luminosity $L\simeq 10^5 L_\odot$ and an effective temperature $T_\mathrm{eff}\simeq 10^4\;[\mathrm{K}]$ at ZAMS. Derive the homology relationships that describe the evolution of effective temperature and luminosity as a function of the mean molecular weight (assuming an ideal gas for simplicity). Use those results to sketch the main sequence evolution of the star and estimate the luminosity and effective temperature of the star once it reaches the terminal age main sequence (TAMS). Does the star become more or less luminous? Does it evolve towards higher or lower effective temperature?

## Solutions

### 1: Homology for radiative energy transport

We start by changing the derivative to one with respect to $x=m/M$,

$$\frac{dT^4}{dx}=-\frac{3\kappa l M}{16\pi^2 a c r^4}.$$

We consider a solution to the equations of stellar structure which we denote with the subscript $1$, and consider another analogous solution with a subscript $2$. The equation for radiative energy transport for star $1$ can be written as

$$\frac{dT_1^4}{dx}=-\frac{3\kappa_1 l_1 M_1}{16\pi^2 a c r_1^4}=-\frac{3\kappa_2 l_2 M_2}{16\pi^2 a c r_2^4}\left[\frac{l_1}{l_2}\frac{M_1}{M_2}\frac{\kappa_1}{\kappa_2}\left(\frac{r_1}{r_2}\right)^{-4}\right].$$

On the right hand side we identify the equation of radiative energy transport for star $2$, such that we have

$$\frac{dT_1^4}{dx}=\frac{dT_2^4}{dx}\left[\frac{l_1}{l_2}\frac{M_1}{M_2}\frac{\kappa_1}{\kappa_2}\left(\frac{r_1}{r_2}\right)^{-4}\right].$$

The desired result is then obtained by integrating from an arbitrary value of $x$ all the way to the surface ($x=1$), while ignoring the temperature at the surface. We can take the entire term in the brackets as constant, as we have shown in class that an ideal gas law without radiation implies $T$ follows a simple homology relationship. This means $\kappa=\kappa_0\rho^a T^b$ will do to, so the equation of radiative energy transport implies the same thing for the luminosity.

### 2: Homologous contraction

Considering two homologous stars with the same mass but different radii, we get

$$\frac{\rho_2(x)}{\rho_1(x)}=\left(\frac{R_2}{R_1}\right)^{-3},\quad \frac{P_2(x)}{P_1(x)}=\left(\frac{R_2}{R_1}\right)^{-4}.$$

Fixing the values for star $2$, and taking the properties of star $1$ to represent those of a homologously contracting star, we obtain

$$\rho_1(x,t) = C_1(x) [R_1(t)]^{-3},\quad P_1(x,t) = C_2(x) [R_1(t)]^{-4},$$

from which the derivatives of density and pressure with respect to radius are straightforward to derive,

$$\frac{\dot{P}(m)}{P(m)}=-4\frac{\dot{R}}{R}=\frac{4}{3}\frac{\dot{\rho}(m)}{\rho(m)}.$$

To switch from pressure to density we make use of the relationship

$$\frac{dP}{P}=\chi_T\frac{dT}{T}+\chi_\rho\frac{d\rho}{\rho},$$

which combined with the previous equation results in

$$\chi_T \frac{\dot{T}}{T}+\chi_\rho\frac{\dot{\rho}}{\rho}=\frac{4}{3}\frac{\dot{\rho}(m)}{\rho(m)}.$$

Using the derived relationship between $\dot{R}/R$ and $\dot{\rho}/\rho$ we obtain the temperature time derivative as a function of the radial time derivative,

$$\frac{\dot{T}(m)}{T(m)}=\frac{1}{\chi_T}\left(3\chi_\rho-4\right)\frac{\dot{R}}{R}.$$

As contraction implies a negative $\dot{R}$, we find that the temperature will increase if the fluid has $\chi_\rho<4/3$. This is the case in particular for an ideal gas, specifically for the case where we can ignore radiation one has $\chi_\rho = 1$. If we instead consider a non-relativistic degenerate gas, we have instead that $\chi_\rho=5/3$, implying that a degenerate star will cool down with contraction.

### 3: Homology with radiation pressure

1. We have that
   
   $$1-\beta=\frac{P_\mathrm{rad}}{P},\;\beta=\frac{P_\mathrm{gas}}{P}.$$

   Using this we can write

   $$\left(\frac{1-\beta}{\beta^4}\right)^{1/3}=\left(\frac{P_\mathrm{rad}}{P_\mathrm{gas}^4}P^3\right)^{1/3}=\left(\frac{a^{1/3}}{3^{1/3}k_\mathrm{B}^{4/3}}\right)\left(\frac{\rho}{\mu}\right)^{-4/3}P,$$

   from which the desired result follows directly.

2. For a constant $\beta$ the equation of state becomes a polytrope with $n=3$, so having a solution for the Lane-Emden equation with $n=3$ allows one to construct arbitrary solutions for different values of $\beta$.

3. Taking $f_1=f(\beta_1)$ and $f_2=f(\beta_2)$ and taking the ratio between the equation of state for both homologous models we find that

   $$\frac{P_1}{P_2}=\left(\frac{\rho_1}{\rho_2}\right)^{4/3}\left(\frac{\mu_1}{\mu_2}\right)^{-4/3}\left(\frac{f_1}{f_2}\right)^{1/3}.$$

   for the ratio between pressures and the ratio between densities we can use the homology relationships that were derived from the equation of hydrostatic equilibrium and the equation of continuity respectively,

   $$\left(\frac{M_1}{M_2}\right)^{2}\left(\frac{R_1}{R_2}\right)^{-4}=\left(\frac{M_1}{M_2}\right)^{4/3}\left(\frac{R_1}{R_2}\right)^{-4}\left(\frac{\mu_1}{\mu_2}\right)^{-4/3}\left(\frac{f_1}{f_2}\right)^{1/3}.$$

   Isolating $f_1/f_2$ gives us the desired homology relationship,

   $$\frac{f_1}{f_2}=\left(\frac{M_1}{M_2}\right)^{2}\left(\frac{\mu_1}{\mu_2}\right)^{4},$$

   or equivalently,

   $$f(\beta)\propto M^2\mu^4.$$

4. We see that $f(\beta)$ increases with mass, which in turn implies $\beta$ decreases with mass. Since $\beta=P_\mathrm{gas}/P$, this means that more massive stars have a smaller fraction of their total pressure coming from gas pressure.

### 4: Chemically homogeneous evolution

We can make use of the mass-luminosity and mass-radius relationships derived in the previous for main-sequence homology: 

$$L\propto \kappa^{-1}\mu^{4}M^3.$$
$$R\propto \mu^{(\nu-4)/(\nu-3)}M^{(\nu-1)/(\nu+3)}\kappa^{1/(\nu+3)}.$$

In this case, as the star evolves homogeneously keeping a fixed composition throughout, we can apply these relationships by just shifting $\mu$ as evolution proceeds. Considering a massive star undergoing CNO burning, we take $\nu\simeq 18$. We will also ignore changes in mass that can be produced by winds, such that we consider evolution at a fixed mass. Opacity can also change with composition, so we do not ignore its variations. Considering all this we have

$$L\propto \kappa^{-1}\mu^4$$
$$R\propto \mu^{0.93}\kappa^{0.048}.$$

To connect this with the evolution in the HR diagram, we use that

$$T_\mathrm{eff}^4 \propto \frac{L}{R^2},$$

which gives us that

$$T_\mathrm{eff}\propto \kappa^{-1.1}\mu^{2.13}.$$

We can relate the properties at any stage during the main sequence to those at ZAMS by considering the value of $\kappa$ and $\mu$ at each of those stages,

$$L=L_\mathrm{ZAMS}\left(\frac{\kappa}{\kappa_\mathrm{ZAMS}}\right)^{-1}\left(\frac{\mu}{\mu_\mathrm{ZAMS}}\right)^4$$
$$T_\mathrm{eff}=T_\mathrm{ZAMS} \left(\frac{\kappa}{\kappa_\mathrm{ZAMS}}\right)^{-1.1}\left(\frac{\mu}{\mu_\mathrm{ZAMS}}\right)^{2.13}.$$

Now we can consider the variation between the zero-age main sequence with a hydrogen mass fraction of $X\sim 0.7$ and the terminal-age main sequence at $X=0$. Considering electron scattering opacity $\kappa=0.2(1+X)\;\mathrm{cm^2\,g^{-1}}$, we have a reduction in opacity as the star burns hydrogen ($\kappa_\mathrm{TAMS}/\kappa_\mathrm{ZAMS}<0.59$). On the other hand, burning hydrogen into helium leads to an increase in the mean molecular weight. Coupled with the two relationships for $L$ and $T_\mathrm{eff}$ derived above, this implies that the homogeneous star evolves to increasing luminosity and effective temperature during core-hydrogen burning.