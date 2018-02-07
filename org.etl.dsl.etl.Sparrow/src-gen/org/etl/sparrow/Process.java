/**
 * generated by Xtext 2.12.0
 */
package org.etl.sparrow;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Process</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.etl.sparrow.Process#getName <em>Name</em>}</li>
 *   <li>{@link org.etl.sparrow.Process#getTry <em>Try</em>}</li>
 *   <li>{@link org.etl.sparrow.Process#getCatch <em>Catch</em>}</li>
 *   <li>{@link org.etl.sparrow.Process#getFinally <em>Finally</em>}</li>
 * </ul>
 *
 * @see org.etl.sparrow.SparrowPackage#getProcess()
 * @model
 * @generated
 */
public interface Process extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Name</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.etl.sparrow.SparrowPackage#getProcess_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.etl.sparrow.Process#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Try</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Try</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Try</em>' containment reference.
   * @see #setTry(Try)
   * @see org.etl.sparrow.SparrowPackage#getProcess_Try()
   * @model containment="true"
   * @generated
   */
  Try getTry();

  /**
   * Sets the value of the '{@link org.etl.sparrow.Process#getTry <em>Try</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Try</em>' containment reference.
   * @see #getTry()
   * @generated
   */
  void setTry(Try value);

  /**
   * Returns the value of the '<em><b>Catch</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Catch</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Catch</em>' containment reference.
   * @see #setCatch(Catch)
   * @see org.etl.sparrow.SparrowPackage#getProcess_Catch()
   * @model containment="true"
   * @generated
   */
  Catch getCatch();

  /**
   * Sets the value of the '{@link org.etl.sparrow.Process#getCatch <em>Catch</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Catch</em>' containment reference.
   * @see #getCatch()
   * @generated
   */
  void setCatch(Catch value);

  /**
   * Returns the value of the '<em><b>Finally</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Finally</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Finally</em>' containment reference.
   * @see #setFinally(Finally)
   * @see org.etl.sparrow.SparrowPackage#getProcess_Finally()
   * @model containment="true"
   * @generated
   */
  Finally getFinally();

  /**
   * Sets the value of the '{@link org.etl.sparrow.Process#getFinally <em>Finally</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Finally</em>' containment reference.
   * @see #getFinally()
   * @generated
   */
  void setFinally(Finally value);

} // Process
