/**
 * generated by Xtext 2.12.0
 */
package org.etl.sparrow.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.util.Switch;

import org.etl.sparrow.Action;
import org.etl.sparrow.Callprocess;
import org.etl.sparrow.Catch;
import org.etl.sparrow.Copydata;
import org.etl.sparrow.Doozle;
import org.etl.sparrow.Dropfile;
import org.etl.sparrow.FBCLead;
import org.etl.sparrow.Fetch;
import org.etl.sparrow.Finally;
import org.etl.sparrow.GooglecalPUT;
import org.etl.sparrow.LoadCsv;
import org.etl.sparrow.Rest;
import org.etl.sparrow.RestPart;
import org.etl.sparrow.SlackPUT;
import org.etl.sparrow.Sms;
import org.etl.sparrow.SparrowPackage;
import org.etl.sparrow.Transform;
import org.etl.sparrow.TrelloGET;
import org.etl.sparrow.TrelloPUT;
import org.etl.sparrow.Try;
import org.etl.sparrow.Updatedaudit;
import org.etl.sparrow.WriteCsv;

/**
 * <!-- begin-user-doc -->
 * The <b>Switch</b> for the model's inheritance hierarchy.
 * It supports the call {@link #doSwitch(EObject) doSwitch(object)}
 * to invoke the <code>caseXXX</code> method for each class of the model,
 * starting with the actual class of the object
 * and proceeding up the inheritance hierarchy
 * until a non-null result is returned,
 * which is the result of the switch.
 * <!-- end-user-doc -->
 * @see org.etl.sparrow.SparrowPackage
 * @generated
 */
public class SparrowSwitch<T> extends Switch<T>
{
  /**
   * The cached model package
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static SparrowPackage modelPackage;

  /**
   * Creates an instance of the switch.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public SparrowSwitch()
  {
    if (modelPackage == null)
    {
      modelPackage = SparrowPackage.eINSTANCE;
    }
  }

  /**
   * Checks whether this is a switch for the given package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param ePackage the package in question.
   * @return whether this is a switch for the given package.
   * @generated
   */
  @Override
  protected boolean isSwitchFor(EPackage ePackage)
  {
    return ePackage == modelPackage;
  }

  /**
   * Calls <code>caseXXX</code> for each class of the model until one returns a non null result; it yields that result.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the first non-null result returned by a <code>caseXXX</code> call.
   * @generated
   */
  @Override
  protected T doSwitch(int classifierID, EObject theEObject)
  {
    switch (classifierID)
    {
      case SparrowPackage.PROCESS:
      {
        org.etl.sparrow.Process process = (org.etl.sparrow.Process)theEObject;
        T result = caseProcess(process);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.TRY:
      {
        Try try_ = (Try)theEObject;
        T result = caseTry(try_);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.FINALLY:
      {
        Finally finally_ = (Finally)theEObject;
        T result = caseFinally(finally_);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.CATCH:
      {
        Catch catch_ = (Catch)theEObject;
        T result = caseCatch(catch_);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.ACTION:
      {
        Action action = (Action)theEObject;
        T result = caseAction(action);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.FBC_LEAD:
      {
        FBCLead fbcLead = (FBCLead)theEObject;
        T result = caseFBCLead(fbcLead);
        if (result == null) result = caseAction(fbcLead);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.DROPFILE:
      {
        Dropfile dropfile = (Dropfile)theEObject;
        T result = caseDropfile(dropfile);
        if (result == null) result = caseAction(dropfile);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.DOOZLE:
      {
        Doozle doozle = (Doozle)theEObject;
        T result = caseDoozle(doozle);
        if (result == null) result = caseAction(doozle);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.REST:
      {
        Rest rest = (Rest)theEObject;
        T result = caseRest(rest);
        if (result == null) result = caseAction(rest);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.REST_PART:
      {
        RestPart restPart = (RestPart)theEObject;
        T result = caseRestPart(restPart);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.TRELLO_GET:
      {
        TrelloGET trelloGET = (TrelloGET)theEObject;
        T result = caseTrelloGET(trelloGET);
        if (result == null) result = caseAction(trelloGET);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.TRELLO_PUT:
      {
        TrelloPUT trelloPUT = (TrelloPUT)theEObject;
        T result = caseTrelloPUT(trelloPUT);
        if (result == null) result = caseAction(trelloPUT);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.FETCH:
      {
        Fetch fetch = (Fetch)theEObject;
        T result = caseFetch(fetch);
        if (result == null) result = caseAction(fetch);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.CALLPROCESS:
      {
        Callprocess callprocess = (Callprocess)theEObject;
        T result = caseCallprocess(callprocess);
        if (result == null) result = caseAction(callprocess);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.UPDATEDAUDIT:
      {
        Updatedaudit updatedaudit = (Updatedaudit)theEObject;
        T result = caseUpdatedaudit(updatedaudit);
        if (result == null) result = caseAction(updatedaudit);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.SMS:
      {
        Sms sms = (Sms)theEObject;
        T result = caseSms(sms);
        if (result == null) result = caseAction(sms);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.SLACK_PUT:
      {
        SlackPUT slackPUT = (SlackPUT)theEObject;
        T result = caseSlackPUT(slackPUT);
        if (result == null) result = caseAction(slackPUT);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.GOOGLECAL_PUT:
      {
        GooglecalPUT googlecalPUT = (GooglecalPUT)theEObject;
        T result = caseGooglecalPUT(googlecalPUT);
        if (result == null) result = caseAction(googlecalPUT);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.COPYDATA:
      {
        Copydata copydata = (Copydata)theEObject;
        T result = caseCopydata(copydata);
        if (result == null) result = caseAction(copydata);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.WRITE_CSV:
      {
        WriteCsv writeCsv = (WriteCsv)theEObject;
        T result = caseWriteCsv(writeCsv);
        if (result == null) result = caseAction(writeCsv);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.LOAD_CSV:
      {
        LoadCsv loadCsv = (LoadCsv)theEObject;
        T result = caseLoadCsv(loadCsv);
        if (result == null) result = caseAction(loadCsv);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      case SparrowPackage.TRANSFORM:
      {
        Transform transform = (Transform)theEObject;
        T result = caseTransform(transform);
        if (result == null) result = caseAction(transform);
        if (result == null) result = defaultCase(theEObject);
        return result;
      }
      default: return defaultCase(theEObject);
    }
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Process</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Process</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseProcess(org.etl.sparrow.Process object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Try</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Try</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseTry(Try object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Finally</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Finally</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseFinally(Finally object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Catch</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Catch</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseCatch(Catch object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Action</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Action</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseAction(Action object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>FBC Lead</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>FBC Lead</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseFBCLead(FBCLead object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Dropfile</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Dropfile</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseDropfile(Dropfile object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Doozle</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Doozle</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseDoozle(Doozle object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Rest</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Rest</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseRest(Rest object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Rest Part</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Rest Part</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseRestPart(RestPart object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Trello GET</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Trello GET</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseTrelloGET(TrelloGET object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Trello PUT</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Trello PUT</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseTrelloPUT(TrelloPUT object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Fetch</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Fetch</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseFetch(Fetch object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Callprocess</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Callprocess</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseCallprocess(Callprocess object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Updatedaudit</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Updatedaudit</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseUpdatedaudit(Updatedaudit object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Sms</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Sms</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseSms(Sms object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Slack PUT</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Slack PUT</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseSlackPUT(SlackPUT object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Googlecal PUT</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Googlecal PUT</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseGooglecalPUT(GooglecalPUT object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Copydata</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Copydata</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseCopydata(Copydata object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Write Csv</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Write Csv</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseWriteCsv(WriteCsv object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Load Csv</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Load Csv</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseLoadCsv(LoadCsv object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>Transform</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>Transform</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject) doSwitch(EObject)
   * @generated
   */
  public T caseTransform(Transform object)
  {
    return null;
  }

  /**
   * Returns the result of interpreting the object as an instance of '<em>EObject</em>'.
   * <!-- begin-user-doc -->
   * This implementation returns null;
   * returning a non-null result will terminate the switch, but this is the last case anyway.
   * <!-- end-user-doc -->
   * @param object the target of the switch.
   * @return the result of interpreting the object as an instance of '<em>EObject</em>'.
   * @see #doSwitch(org.eclipse.emf.ecore.EObject)
   * @generated
   */
  @Override
  public T defaultCase(EObject object)
  {
    return null;
  }

} //SparrowSwitch
