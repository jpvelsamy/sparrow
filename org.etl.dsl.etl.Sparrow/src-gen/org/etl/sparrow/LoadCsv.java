/**
 * generated by Xtext 2.12.0
 */
package org.etl.sparrow;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Load Csv</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.etl.sparrow.LoadCsv#getSource <em>Source</em>}</li>
 *   <li>{@link org.etl.sparrow.LoadCsv#getTo <em>To</em>}</li>
 *   <li>{@link org.etl.sparrow.LoadCsv#getDelim <em>Delim</em>}</li>
 *   <li>{@link org.etl.sparrow.LoadCsv#getValue <em>Value</em>}</li>
 * </ul>
 *
 * @see org.etl.sparrow.SparrowPackage#getLoadCsv()
 * @model
 * @generated
 */
public interface LoadCsv extends Action
{
  /**
   * Returns the value of the '<em><b>Source</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Source</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Source</em>' attribute.
   * @see #setSource(String)
   * @see org.etl.sparrow.SparrowPackage#getLoadCsv_Source()
   * @model
   * @generated
   */
  String getSource();

  /**
   * Sets the value of the '{@link org.etl.sparrow.LoadCsv#getSource <em>Source</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Source</em>' attribute.
   * @see #getSource()
   * @generated
   */
  void setSource(String value);

  /**
   * Returns the value of the '<em><b>To</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>To</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>To</em>' attribute.
   * @see #setTo(String)
   * @see org.etl.sparrow.SparrowPackage#getLoadCsv_To()
   * @model
   * @generated
   */
  String getTo();

  /**
   * Sets the value of the '{@link org.etl.sparrow.LoadCsv#getTo <em>To</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>To</em>' attribute.
   * @see #getTo()
   * @generated
   */
  void setTo(String value);

  /**
   * Returns the value of the '<em><b>Delim</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Delim</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Delim</em>' attribute.
   * @see #setDelim(String)
   * @see org.etl.sparrow.SparrowPackage#getLoadCsv_Delim()
   * @model
   * @generated
   */
  String getDelim();

  /**
   * Sets the value of the '{@link org.etl.sparrow.LoadCsv#getDelim <em>Delim</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Delim</em>' attribute.
   * @see #getDelim()
   * @generated
   */
  void setDelim(String value);

  /**
   * Returns the value of the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>Value</em>' attribute isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>Value</em>' attribute.
   * @see #setValue(String)
   * @see org.etl.sparrow.SparrowPackage#getLoadCsv_Value()
   * @model
   * @generated
   */
  String getValue();

  /**
   * Sets the value of the '{@link org.etl.sparrow.LoadCsv#getValue <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Value</em>' attribute.
   * @see #getValue()
   * @generated
   */
  void setValue(String value);

} // LoadCsv
