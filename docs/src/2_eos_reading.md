# The energy equation and the equation of state (EOS)

Goals:

- Define different EOS properties
- Rewrite the energy equation in terms of $P$ and $T$ instead of $s$

## EOS definitions

Our objective now is to rewrite the energy equation in terms of the time derivative of other thermodynamical properties (instead of entropy). Before we do so, we will first define some terms associated to an equation of state. If we consider an EOS of the form

$$\rho=\rho(P,T),$$

then changes in density are related to changes in pressure and temperature as

$$\mathrm{d}\rho = \left(\frac{\partial \rho}{\partial P}\right)_T\mathrm{d}P + \left(\frac{\partial\rho}{\partial T}\right)_P\mathrm{d}T. \tag{2.1}$$

The partial derivatives are commonly expressed in terms of logarithmic derivatives,

$$\left(\frac{\partial \rho}{\partial P}\right)_T=\frac{\mathrm{d}\rho}{\mathrm{d}\ln \rho}\left(\frac{\partial \ln \rho}{\partial \ln P}\right)_T\frac{\mathrm{d}\ln P}{\mathrm{d}P}=\frac{\rho}{P}\left(\frac{\partial \ln \rho}{\partial \ln P}\right)_T.$$

If we define

$$\alpha\equiv \left(\frac{\partial \ln \rho}{\partial \ln P}\right)_T, \quad \delta=-\left(\frac{\partial\ln\rho}{\partial\ln T}\right)_P,$$

then Equation (2.1) turns into

$$\frac{\mathrm{d}\rho}{\rho}=\alpha\frac{\mathrm{d}P}{P}-\delta \frac{\mathrm{d}T}{T}.$$

If we know the the form $\rho=\rho(P,T)$ of the EOS, $\alpha$ and $\delta$ can be derived from it. Two other quantities that will be useful are the heat capacities. The heat capacity at constant pressure is:

$$c_P\equiv \left(\frac{\partial q}{\partial T}\right)_P=\left(\frac{\partial u}{\partial T}\right)_P+P\left(\frac{\partial v}{\partial T}\right)_P,$$

and similarly, we have the specific heat at constant volume,

$$c_v\equiv \left(\frac{\partial q}{\partial T}\right)_v=\left(\frac{\partial u}{\partial T}\right)_v.$$


## Rewriting the energy equation

Let's consider the energy equation in its Lagragian form:

$$T\frac{\partial s}{\partial t}=\frac{\partial q}{\partial t}=\varepsilon_\mathrm{nuc}-\frac{\partial L}{\partial m}.\tag{2.2}$$

We can rewrite this using the first law of thermodynamics, which states that

$$\mathrm{d}U = \mathrm{d}Q - P\mathrm{d}V.$$

This form of the first law describes a body of volume $V$ with a surface pressure $P$ and total energy $U$, to which an amount of heat $\mathrm{d}Q$ is deposited. We want to work with local properties of our gas, for which we make use of specific (meaning, per unit mass) quantities,

$$\mathrm{d}u=\mathrm{d}q -P \mathrm{d}v, \quad v\equiv \frac{1}{\rho},$$

where $v$ is the volume per unit mass. More commonly $v$ is reserved for the velocity, but in this chapter we reserve it exclusively for the specific volume. The energy equation (2.2) can then be rewritten as

$$\frac{\partial u}{\partial t}+P\frac{\partial v}{\partial t}=\varepsilon_\mathrm{nuc}-\frac{\partial L}{\partial m}.$$

We aim to write the energy equation (2.2) in terms of the pressure and temperature. For this we have that

$$\mathrm{d}q=\mathrm{d}u+P\mathrm{d}v=A\mathrm{d}T+B\mathrm{d}P.$$

Our objective is to find $A$ and $B$. For this we will need two seemingly (at first) unrelated results.

1. Consider the relationship between $u$, $v$ and $T$,

   $$\mathrm{d}u = \left(\frac{\partial u}{\partial v}\right)_T \mathrm{d}v + \left(\frac{\partial u}{\partial T}\right)_v\mathrm{d}T.\tag{2.3}$$

   We also have that

   $$\mathrm{d}s=\frac{\mathrm{d}q}{T}=\frac{1}{T}\left(\mathrm{d}u + P\mathrm{d}v\right),$$

   were after applying Equation $(2.3)$ gives us

   $$\mathrm{d}s=\frac{1}{T}\left[\left(\frac{\partial u}{\partial v}\right)_T + P\right]\mathrm{d}v + \frac{1}{T}\left(\frac{\partial u}{\partial T}\right)_v.$$

   As $\mathrm{d}s$ is a total differential (in contrast to $\mathrm{d}q$ which is an [imperfect differential](https://en.wikipedia.org/wiki/Inexact_differential)) we have that

   $$\frac{\partial^2 s}{\partial T\partial v}=\frac{\partial^2 s}{\partial v\partial T}$$
   $$\rightarrow \frac{\partial}{\partial T}\left[\frac{1}{T}\left(\frac{\partial u}{\partial v}\right)_T+\frac{P}{T}\right]=\frac{1}{T}\frac{\partial^2 u}{\partial v\partial T}$$

   which after performing the derivative on the left hand side gives us the following relationship:

   $$\boxed{\left(\frac{\partial u}{\partial v}\right)_T=T\left(\frac{\partial P}{\partial T}\right)_v-P}\tag{2.4}$$

2. We will now derive a relationship between the specific heats. We start from $(2.3)$,

   $$\frac{\mathrm{d}u}{\mathrm{d}T}=\left(\frac{\partial u}{\partial v}\right)_T\frac{\mathrm{d} v}{\mathrm{d} T}+\left(\frac{\partial u}{\partial T}\right)_v$$
   $$\left(\frac{\partial u}{\partial T}\right)_P=\left(\frac{\partial u}{\partial v}\right)_T\left(\frac{\partial v}{\partial T}\right)_P+\left(\frac{\partial u}{\partial T}\right)_v.$$

   We use $(2.4)$ on the right hand side,

   $$\left(\frac{\partial u}{\partial T}\right)_P=\left[T\left(\frac{\partial P}{\partial T}\right)_v-P\right]\left(\frac{\partial v}{\partial T}\right)_P + \left(\frac{\partial u}{\partial T}\right)_v,$$

   and after rearranging terms we get

   $$\left(\frac{\partial u}{\partial T}\right)_P + P\left(\frac{\partial u}{\partial T}\right)_P-\left(\frac{\partial u}{\partial T}\right)_v = T\left(\frac{\partial P}{\partial T}\right)_v\left(\frac{\partial v}{\partial T}\right)_P$$
   $$c_P-c_v = T\left(\frac{\partial P}{\partial T}\right)_v\left(\frac{\partial v}{\partial T}\right)_P.\tag{2.5}$$

   We leave it as part of the exercises to show that

   $$\left(\frac{\partial P}{\partial T}\right)_v=-\frac{\left(\frac{\partial P}{\partial T}\right)_P}{\left(\frac{\partial v}{\partial P}\right)_T}=\frac{P\delta}{T\alpha}, \tag{2.6}$$

   and that

   $$T\left(\frac{\partial v}{\partial T}\right)_P=\frac{\delta}{\rho}.$$

   Using these two expressions in Equation $(2.4)$ results in

   $$\boxed{c_P-c_v = \frac{P\delta^2}{T\rho\alpha}}.\tag{2.7}$$

We now have what we need to rewrite our energy equation. Let's start from

$$\mathrm{d}q = \mathrm{d}u + P \mathrm{d}v.$$

Applying $(2.3)$ we get

$$\mathrm{d}q = \left(\frac{\partial u}{\partial T}\right)_v\mathrm{d}T + \left(\frac{\partial u}{\partial v}\right)_T\mathrm{d}v+P\mathrm{d}v$$
$$=\left(\frac{\partial u}{\partial T}\right)_v\mathrm{d}T+\left[\left(\frac{\partial u}{\partial v}\right)_T+P\right]\mathrm{d}v.$$

We use $(2.4)$ on the second term of the right hand side,

$$\mathrm{d}q=\left(\frac{\partial u}{\partial T}\right)_v\mathrm{d}T+T\left(\frac{\partial P}{\partial T}\right)_v\mathrm{d}v.$$

We note that $c_v=(\partial u/\partial T)_v$ and $\mathrm{d}v=-\mathrm{d}\rho/\rho^2$, and use Equation $(2.6)$ on the right hand side,

$$\mathrm{d}q = c_v\mathrm{d}T-\frac{P\delta}{\rho\alpha}\frac{\mathrm{d}\rho}{\rho}$$
$$=c_v\mathrm{d}T-\frac{P\delta}{\rho\alpha}\left(\alpha\frac{\mathrm{d}P}{P}-\delta\frac{\mathrm{d}T}{T}\right)$$
$$=\left(c_v+\frac{P\delta^2}{\rho T \alpha}\right)\mathrm{d}T-\frac{\delta}{\rho}\mathrm{d}P.$$

Using Equation $(2.7)$ we finally get what we were looking for:

$$\mathrm{d}q = c_P\mathrm{d}T-\frac{\delta}{\rho}\mathrm{d}P.\tag{2.8}$$

Using this expression we obtain the energy equation in terms of $\partial P/\partial t$ and $\partial T/\partial t$,

$$\boxed{c_P\frac{\partial T}{\partial t}-\frac{\delta}{\rho}\frac{\partial P}{\partial t}=\varepsilon_\mathrm{nuc}-\frac{\partial L}{\partial m}.}$$


A very useful property of the gas is the adiabatic temperature gradient,

$$\nabla_\mathrm{ad}=\left(\frac{\partial \ln T}{\partial \ln P}\right)_\mathrm{ad},$$

where "ad" indicates a change at constant entropy ($\mathrm{d}s=0$). Using Equation $(2.8)$ together with $T\mathrm{d}s=\mathrm{d}q$, we get

$$\left.\left(\frac{\partial T}{\partial P}\right)_\mathrm{ad}=-\frac{\delta}{c_P\rho}\quad\right/\frac{P}{T}\cdot$$
$$\boxed{\nabla_\mathrm{ad}=\frac{P\delta}{T\rho c_P}.}$$

We will find later on that in some cases we can approximate a star as a ball of constant entropy, which implies

$$\nabla\equiv\frac{\partial \ln T}{\partial \ln P}=\nabla_\mathrm{ad},$$

where $\nabla$ represents the actual temperature gradient with respect to pressure through the star.