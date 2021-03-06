/**
 * generated by Xtext 2.12.0
 */
package org.etl.sparrow;

import org.eclipse.emf.ecore.EFactory;

/**
 * <!-- begin-user-doc -->
 * The <b>Factory</b> for the model.
 * It provides a create method for each non-abstract class of the model.
 * <!-- end-user-doc -->
 * @see org.etl.sparrow.SparrowPackage
 * @generated
 */
public interface SparrowFactory extends EFactory
{
  /**
   * The singleton instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  SparrowFactory eINSTANCE = org.etl.sparrow.impl.SparrowFactoryImpl.init();

  /**
   * Returns a new object of class '<em>Process</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Process</em>'.
   * @generated
   */
  Process createProcess();

  /**
   * Returns a new object of class '<em>Try</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Try</em>'.
   * @generated
   */
  Try createTry();

  /**
   * Returns a new object of class '<em>Finally</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Finally</em>'.
   * @generated
   */
  Finally createFinally();

  /**
   * Returns a new object of class '<em>Catch</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Catch</em>'.
   * @generated
   */
  Catch createCatch();

  /**
   * Returns a new object of class '<em>Action</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Action</em>'.
   * @generated
   */
  Action createAction();

  /**
   * Returns a new object of class '<em>FBC Lead</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>FBC Lead</em>'.
   * @generated
   */
  FBCLead createFBCLead();

  /**
   * Returns a new object of class '<em>Dropfile</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Dropfile</em>'.
   * @generated
   */
  Dropfile createDropfile();

  /**
   * Returns a new object of class '<em>Doozle</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Doozle</em>'.
   * @generated
   */
  Doozle createDoozle();

  /**
   * Returns a new object of class '<em>Rest</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Rest</em>'.
   * @generated
   */
  Rest createRest();

  /**
   * Returns a new object of class '<em>Rest Part</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Rest Part</em>'.
   * @generated
   */
  RestPart createRestPart();

  /**
   * Returns a new object of class '<em>Trello GET</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Trello GET</em>'.
   * @generated
   */
  TrelloGET createTrelloGET();

  /**
   * Returns a new object of class '<em>Trello PUT</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Trello PUT</em>'.
   * @generated
   */
  TrelloPUT createTrelloPUT();

  /**
   * Returns a new object of class '<em>Fetch</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Fetch</em>'.
   * @generated
   */
  Fetch createFetch();

  /**
   * Returns a new object of class '<em>Callprocess</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Callprocess</em>'.
   * @generated
   */
  Callprocess createCallprocess();

  /**
   * Returns a new object of class '<em>Updatedaudit</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Updatedaudit</em>'.
   * @generated
   */
  Updatedaudit createUpdatedaudit();

  /**
   * Returns a new object of class '<em>Sms</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Sms</em>'.
   * @generated
   */
  Sms createSms();

  /**
   * Returns a new object of class '<em>Slack PUT</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Slack PUT</em>'.
   * @generated
   */
  SlackPUT createSlackPUT();

  /**
   * Returns a new object of class '<em>Googlecal PUT</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Googlecal PUT</em>'.
   * @generated
   */
  GooglecalPUT createGooglecalPUT();

  /**
   * Returns a new object of class '<em>Copydata</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Copydata</em>'.
   * @generated
   */
  Copydata createCopydata();

  /**
   * Returns a new object of class '<em>Write Csv</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Write Csv</em>'.
   * @generated
   */
  WriteCsv createWriteCsv();

  /**
   * Returns a new object of class '<em>Load Csv</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Load Csv</em>'.
   * @generated
   */
  LoadCsv createLoadCsv();

  /**
   * Returns a new object of class '<em>Transform</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Transform</em>'.
   * @generated
   */
  Transform createTransform();

  /**
   * Returns a new object of class '<em>Expression</em>'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return a new object of class '<em>Expression</em>'.
   * @generated
   */
  Expression createExpression();

  /**
   * Returns the package supported by this factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the package supported by this factory.
   * @generated
   */
  SparrowPackage getSparrowPackage();

} //SparrowFactory
