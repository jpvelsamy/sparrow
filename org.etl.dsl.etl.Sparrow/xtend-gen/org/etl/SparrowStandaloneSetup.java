/**
 * generated by Xtext 2.11.0
 */
package org.etl;

import org.etl.SparrowStandaloneSetupGenerated;

/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
@SuppressWarnings("all")
public class SparrowStandaloneSetup extends SparrowStandaloneSetupGenerated {
  public static void doSetup() {
    new SparrowStandaloneSetup().createInjectorAndDoEMFRegistration();
  }
}
