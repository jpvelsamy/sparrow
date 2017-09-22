/**
 * generated by Xtext 2.11.0
 */
package org.etl.sparrow;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Transform</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.etl.sparrow.Transform#getOn <em>On</em>}</li>
 *   <li>{@link org.etl.sparrow.Transform#getValue <em>Value</em>}</li>
 *   <li>{@link org.etl.sparrow.Transform#getCondition <em>Condition</em>}</li>
 * </ul>
 *
 * @see org.etl.sparrow.SparrowPackage#getTransform()
 * @model
 * @generated
 */
public interface Transform extends Action
{
  /**
   * Returns the value of the '<em><b>On</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>On</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>On</em>' attribute.
   * @see #setOn(String)
   * @see org.etl.sparrow.SparrowPackage#getTransform_On()
   * @model
   * @generated
   */
  String getOn();

  /**
   * Sets the value of the '{@link org.etl.sparrow.Transform#getOn <em>On</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>On</em>' attribute.
   * @see #getOn()
   * @generated
   */
  void setOn(String value);

  /**
   * Returns the value of the '<em><b>Value</b></em>' attribute list.
   * The list contents are of type {@link java.lang.String}.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Value</em>' attribute list isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Value</em>' attribute list.
   * @see org.etl.sparrow.SparrowPackage#getTransform_Value()
   * @model unique="false"
   * @generated
   */
  EList<String> getValue();

  /**
   * Returns the value of the '<em><b>Condition</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Condition</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Condition</em>' attribute.
   * @see #setCondition(String)
   * @see org.etl.sparrow.SparrowPackage#getTransform_Condition()
   * @model
   * @generated
   */
  String getCondition();

  /**
   * Sets the value of the '{@link org.etl.sparrow.Transform#getCondition <em>Condition</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Condition</em>' attribute.
   * @see #getCondition()
   * @generated
   */
  void setCondition(String value);

} // Transform
