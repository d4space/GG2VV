#ifndef STABLEPOINT_H
#define STABLEPOINT_H

#include "phasespace.h"
#include "settings.h"
#include "utilities.h"

const bool double_precision_sufficient(const PhaseSpace& ps)
{
  bool dps = false;

#if defined PROCMACRO_WW2l2v
  //dps = !(ps.a().pt() < 6. && (ps.a().pt() < 1. || fabs(ps.a().m() - SMP::mV) > 5 * SMP::wV || fabs(ps.p().m() - SMP::mV) > 5 * SMP::wV));
  dps = true;
#elif defined PROCMACRO_ZAZ_2l2v
  dps = !(ps.a().pt() < 7. && (ps.a().pt() < 1. || fabs(ps.a().m() - SMP::mV) > 5 * SMP::wV || fabs(ps.p().m() - SMP::mV) > 5 * SMP::wV));
#elif defined PROCMACRO_ZAZA2l2l
  dps = ps.a().pt() > 7.;
#elif defined PROCMACRO_ZAZA4l
  dps = ps.a().pt() > 8. && ps.a2().pt() > 8.;
  dps = dps && max(fabs(ps.a().y()), fabs(ps.p().y()), fabs(ps.a2().y()), fabs(ps.p2().y())) < 2.5;
#elif defined PROCMACRO_WWZAZ_2l2v
  dps = !(ps.a().pt() < 6. && (ps.a().pt() < 1. || fabs(ps.a().m() - SMP::mW) > 5 * SMP::wW || fabs(ps.p().m() - SMP::mW) > 5 * SMP::wW)) && !(ps.a2().pt() < 7. && (ps.a2().pt() < 1. || fabs(ps.a2().m() - SMP::mZ) > 5 * SMP::wZ || fabs(ps.p2().m() - SMP::mZ) > 5 * SMP::wZ));
#else
  fatal_error("error: double_precision_sufficient: unknown process");
#endif

  dps = dps || (amplitude_selection == AmpSqr::HIGGSSIGNAL);
  return dps;
}

const bool quadruple_precision_sufficient(const PhaseSpace& ps)
{
  bool dps = false;

#if defined PROCMACRO_WW2l2v
  dps = ps.a().pt() > 1.;
#elif defined PROCMACRO_ZAZ_2l2v
  dps = ps.a().pt() > 1.;
#elif defined PROCMACRO_ZAZA2l2l
  dps = ps.a().pt() > 1.;
#elif defined PROCMACRO_ZAZA4l
  dps = ps.a().pt() > 2. && ps.a2().pt() > 2.;
#elif defined PROCMACRO_WWZAZ_2l2v
  dps = ps.a().pt() > 1. && ps.a2().pt() > 1.;
#else
  fatal_error("error: quadruple_precision_sufficient: unknown process");
#endif

  dps = dps || (amplitude_selection == AmpSqr::HIGGSSIGNAL);
  return dps;
}

#endif     /* STABLEPOINT_H */
