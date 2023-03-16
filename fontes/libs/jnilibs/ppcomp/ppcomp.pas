{*******************************************************}
{                                                       }
{           CodeGear Delphi Runtime Library             }
{ Copyright(c) 2014 Embarcadero Technologies, Inc.      }
{                                                       }
{*******************************************************}

unit ppcomp;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Widget,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Util,
  Androidapi.JNI.Os,
  Androidapi.JNI.Net,
  Androidapi.JNI.App;

type
// ===== Forward declarations =====

  JICallbackListener_Stub = interface;//wangpos.sdk4.emv.ICallbackListener$Stub
  Jepwp_Callback = interface;//br.com.gertec.epwp.Callback
  JDefines = interface;//br.com.gertec.epwp.Defines
  JDefines_EMV_Result = interface;//br.com.gertec.epwp.Defines$EMV_Result
  JEMV_TransactionInput = interface;//br.com.gertec.epwp.EMV_TransactionInput
  JMain = interface;//br.com.gertec.epwp.Main
  JMain_1 = interface;//br.com.gertec.epwp.Main$1
  Jepwp_Parser = interface;//br.com.gertec.epwp.Parser
  JByteUtil = interface;//br.com.gertec.epwp.util.ByteUtil
  JCAPK = interface;//br.com.gertec.epwp.util.CAPK
  JMoneyUtil = interface;//br.com.gertec.epwp.util.MoneyUtil
  JNumberUtil = interface;//br.com.gertec.epwp.util.NumberUtil
  JPayPassTermConfig = interface;//br.com.gertec.epwp.util.PayPassTermConfig
  Jutil_StringUtils = interface;//br.com.gertec.epwp.util.StringUtils
  JTLV = interface;//br.com.gertec.epwp.util.TLV
  JTLV_DolItem = interface;//br.com.gertec.epwp.util.TLV$DolItem
  JTLVList = interface;//br.com.gertec.epwp.util.TLVList
  JTLV_ = interface;//br.com.gertec.epwp.util.TLV_
  JGPOS = interface;//br.com.gertec.gpos.GPOS
  JGPOS_1 = interface;//br.com.gertec.gpos.GPOS$1
  JKeyPurpose = interface;//br.com.gertec.gpos.constants.KeyPurpose
  JKeyType = interface;//br.com.gertec.gpos.constants.KeyType
  JBuildConstants = interface;//br.com.gertec.ppcomp.BuildConstants
  JIPPCompConstants = interface;//br.com.gertec.ppcomp.IPPCompConstants
  JIPPCompDSPCallbacks = interface;//br.com.gertec.ppcomp.IPPCompDSPCallbacks
  JPPCompBase = interface;//br.com.gertec.ppcomp.PPCompBase
  JPPComp = interface;//br.com.gertec.ppcomp.PPComp
  JPPComp_1 = interface;//br.com.gertec.ppcomp.PPComp$1
  JPPComp_2 = interface;//br.com.gertec.ppcomp.PPComp$2
  JPPComp_3 = interface;//br.com.gertec.ppcomp.PPComp$3
  JPPCompBase_1 = interface;//br.com.gertec.ppcomp.PPCompBase$1
  JPPCompBase_2 = interface;//br.com.gertec.ppcomp.PPCompBase$2
  JPPCompBase_3 = interface;//br.com.gertec.ppcomp.PPCompBase$3
  JPPCompException = interface;//br.com.gertec.ppcomp.PPCompException
  JPPCompNative = interface;//br.com.gertec.ppcomp.PPCompNative
  Jppcomp_a = interface;//br.com.gertec.ppcomp.a
  JLANGUAGE = interface;//br.com.gertec.ppcomp.enums.LANGUAGE
  JResourceBundle = interface;//java.util.ResourceBundle
  JListResourceBundle = interface;//java.util.ListResourceBundle
  JExceptionDescription = interface;//br.com.gertec.ppcomp.exceptions.ExceptionDescription
  JPPCompAlreadyOpenException = interface;//br.com.gertec.ppcomp.exceptions.PPCompAlreadyOpenException
  JPPCompCTLSSAppNautException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCTLSSAppNautException
  JPPCompCTLSSAppNavException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCTLSSAppNavException
  JPPCompCTLSSCommErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCTLSSCommErrException
  JPPCompCTLSSInvalidatException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCTLSSInvalidatException
  JPPCompCTLSSMultipleException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCTLSSMultipleException
  JPPCompCTLSSProblemsException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCTLSSProblemsException
  JPPCompCancelException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCancelException
  JPPCompCardAppNautException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardAppNautException
  JPPCompCardAppNavException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardAppNavException
  JPPCompCardBlockedException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardBlockedException
  JPPCompCardErrStructException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardErrStructException
  JPPCompCardExpiredException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardExpiredException
  JPPCompCardInvDataException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardInvDataException
  JPPCompCardInvException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardInvException
  JPPCompCardInvalidatException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardInvalidatException
  JPPCompCardNAuthException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardNAuthException
  JPPCompCardNotEffectException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardNotEffectException
  JPPCompCardProblemsException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCardProblemsException
  JPPCompCommErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCommErrException
  JPPCompCommtOutException = interface;//br.com.gertec.ppcomp.exceptions.PPCompCommtOutException
  JPPCompDataNotFoundException = interface;//br.com.gertec.ppcomp.exceptions.PPCompDataNotFoundException
  JPPCompDumbCardException = interface;//br.com.gertec.ppcomp.exceptions.PPCompDumbCardException
  JPPCompErrCardException = interface;//br.com.gertec.ppcomp.exceptions.PPCompErrCardException
  JPPCompErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompErrException
  JPPCompErrFallbackException = interface;//br.com.gertec.ppcomp.exceptions.PPCompErrFallbackException
  JPPCompErrMandatException = interface;//br.com.gertec.ppcomp.exceptions.PPCompErrMandatException
  JPPCompErrMaxAidException = interface;//br.com.gertec.ppcomp.exceptions.PPCompErrMaxAidException
  JPPCompErrPinException = interface;//br.com.gertec.ppcomp.exceptions.PPCompErrPinException
  JPPCompErrPktSecException = interface;//br.com.gertec.ppcomp.exceptions.PPCompErrPktSecException
  JPPCompExecErrorException = interface;//br.com.gertec.ppcomp.exceptions.PPCompExecErrorException
  JPPCompIntErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompIntErrException
  JPPCompInvAmountException = interface;//br.com.gertec.ppcomp.exceptions.PPCompInvAmountException
  JPPCompInvCallException = interface;//br.com.gertec.ppcomp.exceptions.PPCompInvCallException
  JPPCompInvModelException = interface;//br.com.gertec.ppcomp.exceptions.PPCompInvModelException
  JPPCompInvParamException = interface;//br.com.gertec.ppcomp.exceptions.PPCompInvParamException
  JPPCompJNIException = interface;//br.com.gertec.ppcomp.exceptions.PPCompJNIException
  JPPCompLimitExcException = interface;//br.com.gertec.ppcomp.exceptions.PPCompLimitExcException
  JPPCompMCDataErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompMCDataErrException
  JPPCompMFErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompMFErrException
  JPPCompMFErrFmtException = interface;//br.com.gertec.ppcomp.exceptions.PPCompMFErrFmtException
  JPPCompMFNFoundException = interface;//br.com.gertec.ppcomp.exceptions.PPCompMFNFoundException
  JPPCompNoApplicException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNoApplicException
  JPPCompNoBalanceException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNoBalanceException
  JPPCompNoCardException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNoCardException
  JPPCompNoFuncException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNoFuncException
  JPPCompNoSamException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNoSamException
  JPPCompNoSecException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNoSecException
  JPPCompNotOpenException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNotOpenException
  JPPCompNotifyException = interface;//br.com.gertec.ppcomp.exceptions.PPCompNotifyException
  JPPCompParameterNullPointerException = interface;//br.com.gertec.ppcomp.exceptions.PPCompParameterNullPointerException
  JPPCompPinBusyException = interface;//br.com.gertec.ppcomp.exceptions.PPCompPinBusyException
  JPPCompPortErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompPortErrException
  JPPCompProcessingException = interface;//br.com.gertec.ppcomp.exceptions.PPCompProcessingException
  JPPCompRspErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompRspErrException
  JPPCompRspOverflowException = interface;//br.com.gertec.ppcomp.exceptions.PPCompRspOverflowException
  JPPCompSamErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompSamErrException
  JPPCompSamInvException = interface;//br.com.gertec.ppcomp.exceptions.PPCompSamInvException
  JPPCompTabErrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompTabErrException
  JPPCompTabExpException = interface;//br.com.gertec.ppcomp.exceptions.PPCompTabExpException
  JPPCompTimeoutException = interface;//br.com.gertec.ppcomp.exceptions.PPCompTimeoutException
  JPPCompUnknownStatException = interface;//br.com.gertec.ppcomp.exceptions.PPCompUnknownStatException
  JPPCompVCInvCurrException = interface;//br.com.gertec.ppcomp.exceptions.PPCompVCInvCurrException
  JResourceBundle_Control = interface;//java.util.ResourceBundle$Control
  JAtomicLong = interface;//java.util.concurrent.atomic.AtomicLong
  Jlibemvbinder_BuildConfig = interface;//sdk4.wangpos.libemvbinder.BuildConfig
  JEmvBinder = interface;//sdk4.wangpos.libemvbinder.EmvBinder
  Jlibemvbinder_CAPK = interface;//sdk4.wangpos.libemvbinder.CAPK
  JCAPKRevoke = interface;//sdk4.wangpos.libemvbinder.CAPKRevoke
  JEmvAppList = interface;//sdk4.wangpos.libemvbinder.EmvAppList
  JEmvBinder_1 = interface;//sdk4.wangpos.libemvbinder.EmvBinder$1
  JEmvBinder_2 = interface;//sdk4.wangpos.libemvbinder.EmvBinder$2
  JEmvCore = interface;//sdk4.wangpos.libemvbinder.EmvCore
  JEmvParam = interface;//sdk4.wangpos.libemvbinder.EmvParam
  JExceptPAN = interface;//sdk4.wangpos.libemvbinder.ExceptPAN
  JExceptPAN_1 = interface;//sdk4.wangpos.libemvbinder.ExceptPAN$1
  JPID = interface;//sdk4.wangpos.libemvbinder.PID
  JPayPassPreProcInterInfo = interface;//sdk4.wangpos.libemvbinder.PayPassPreProcInterInfo
  Jlibemvbinder_PayPassTermConfig = interface;//sdk4.wangpos.libemvbinder.PayPassTermConfig
  JIBinderPool = interface;//wangpos.sdk4.emv.IBinderPool
  JIBinderPool_Stub = interface;//wangpos.sdk4.emv.IBinderPool$Stub
  JStub_a = interface;//wangpos.sdk4.emv.IBinderPool$Stub$a
  JICAPKInterface = interface;//wangpos.sdk4.emv.ICAPKInterface
  JICAPKInterface_Stub = interface;//wangpos.sdk4.emv.ICAPKInterface$Stub
  JICAPKInterface_Stub_a = interface;//wangpos.sdk4.emv.ICAPKInterface$Stub$a
  JICAPKRevokeInterface = interface;//wangpos.sdk4.emv.ICAPKRevokeInterface
  JICAPKRevokeInterface_Stub = interface;//wangpos.sdk4.emv.ICAPKRevokeInterface$Stub
  JICAPKRevokeInterface_Stub_a = interface;//wangpos.sdk4.emv.ICAPKRevokeInterface$Stub$a
  JICallbackListener = interface;//wangpos.sdk4.emv.ICallbackListener
  JICallbackListener_Stub_a = interface;//wangpos.sdk4.emv.ICallbackListener$Stub$a
  JIEmvAppListInterface = interface;//wangpos.sdk4.emv.IEmvAppListInterface
  JIEmvAppListInterface_Stub = interface;//wangpos.sdk4.emv.IEmvAppListInterface$Stub
  JIEmvAppListInterface_Stub_a = interface;//wangpos.sdk4.emv.IEmvAppListInterface$Stub$a
  JIEmvCoreInterface = interface;//wangpos.sdk4.emv.IEmvCoreInterface
  JIEmvCoreInterface_Stub = interface;//wangpos.sdk4.emv.IEmvCoreInterface$Stub
  JIEmvCoreInterface_Stub_a = interface;//wangpos.sdk4.emv.IEmvCoreInterface$Stub$a
  JIEmvParamInterface = interface;//wangpos.sdk4.emv.IEmvParamInterface
  JIEmvParamInterface_Stub = interface;//wangpos.sdk4.emv.IEmvParamInterface$Stub
  JIEmvParamInterface_Stub_a = interface;//wangpos.sdk4.emv.IEmvParamInterface$Stub$a
  JIExceptPANInterface = interface;//wangpos.sdk4.emv.IExceptPANInterface
  JIExceptPANInterface_Stub = interface;//wangpos.sdk4.emv.IExceptPANInterface$Stub
  JIExceptPANInterface_Stub_a = interface;//wangpos.sdk4.emv.IExceptPANInterface$Stub$a
  JIPayPassPreProcInterInfoInterface = interface;//wangpos.sdk4.emv.IPayPassPreProcInterInfoInterface
  JIPayPassPreProcInterInfoInterface_Stub = interface;//wangpos.sdk4.emv.IPayPassPreProcInterInfoInterface$Stub
  JIPayPassPreProcInterInfoInterface_Stub_a = interface;//wangpos.sdk4.emv.IPayPassPreProcInterInfoInterface$Stub$a
  JIPayPassTermConfigInterface = interface;//wangpos.sdk4.emv.IPayPassTermConfigInterface
  JIPayPassTermConfigInterface_Stub = interface;//wangpos.sdk4.emv.IPayPassTermConfigInterface$Stub
  JIPayPassTermConfigInterface_Stub_a = interface;//wangpos.sdk4.emv.IPayPassTermConfigInterface$Stub$a

// ===== Interface declarations =====

  JICallbackListener_StubClass = interface(JBinderClass)
    ['{235BC2FF-43C6-4DE5-B6A0-2607540247F4}']
    {class} function asInterface(P1: JIBinder): JICallbackListener; cdecl;
    {class} function init: JICallbackListener_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/ICallbackListener$Stub')]
  JICallbackListener_Stub = interface(JBinder)
    ['{EC9F590D-BD03-48B3-918F-05E44FD81BE1}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJICallbackListener_Stub = class(TJavaGenericImport<JICallbackListener_StubClass, JICallbackListener_Stub>) end;

  Jepwp_CallbackClass = interface(JICallbackListener_StubClass)
    ['{C64D6895-CF24-459C-8687-C6B5BB6FAA1A}']
    {class} function init: Jepwp_Callback; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/Callback')]
  Jepwp_Callback = interface(JICallbackListener_Stub)
    ['{78011EC5-43AF-483B-B483-2A4ACEE0B423}']
    function emvCoreCallback(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: TJavaArray<Integer>): Integer; cdecl;
  end;
  TJepwp_Callback = class(TJavaGenericImport<Jepwp_CallbackClass, Jepwp_Callback>) end;

  JDefinesClass = interface(IJavaClass)
    ['{98DB61C2-A9E3-4554-A7A6-DC4BA9A15A87}']
  end;

  [JavaSignature('br/com/gertec/epwp/Defines')]
  JDefines = interface(IJavaInstance)
    ['{7F78A871-E361-40B0-AB6B-42E0B1E24FA1}']
  end;
  TJDefines = class(TJavaGenericImport<JDefinesClass, JDefines>) end;

  JDefines_EMV_ResultClass = interface(IJavaClass)
    ['{670FDD08-3AD3-41F6-8D5A-068274FAD200}']
    {class} function _GetEMV_AccessDeniedError: Integer;
    {class} function _GetEMV_AlreadyInitializedError: Integer;
    {class} function _GetEMV_AuthenticationError: Integer;
    {class} function _GetEMV_BitCountError: Integer;
    {class} function _GetEMV_BufferNotEnoughError: Integer;
    {class} function _GetEMV_BufferOverflowError: Integer;
    {class} function _GetEMV_BufferUnderflowError: Integer;
    {class} function _GetEMV_CollisionError: Integer;
    {class} function _GetEMV_CommunicationError: Integer;
    {class} function _GetEMV_DataLoadError: Integer;
    {class} function _GetEMV_EmptyCandidateList: Integer;
    {class} function _GetEMV_FramingError: Integer;
    {class} function _GetEMV_GeneralError: Integer;
    {class} function _GetEMV_InvalidCRCError: Integer;
    {class} function _GetEMV_InvalidFormatError: Integer;
    {class} function _GetEMV_InvalidParameterError: Integer;
    {class} function _GetEMV_InvalidProcessInterface: Integer;
    {class} function _GetEMV_InvalidServiceInterface: Integer;
    {class} function _GetEMV_MandatoryTagLengthError: Integer;
    {class} function _GetEMV_MandatoryTagNotFoundError: Integer;
    {class} function _GetEMV_NoCardError: Integer;
    {class} function _GetEMV_NotInitializedError: Integer;
    {class} function _GetEMV_OK: Integer;
    {class} function _GetEMV_ParityError: Integer;
    {class} function _GetEMV_ProtocolError: Integer;
    {class} function _GetEMV_RedundantPrimitiveDataError: Integer;
    {class} function _GetEMV_Running: Integer;
    {class} function _GetEMV_SFIFormatError: Integer;
    {class} function _GetEMV_SwitchInterface: Integer;
    {class} function _GetEMV_TagNotFoundError: Integer;
    {class} function _GetEMV_TimeoutError: Integer;
    {class} function _GetEMV_TransactionCanceled: Integer;
    {class} function _GetEMV_TransactionFinished: Integer;
    {class} function _GetEMV_TransactionTypeNotSupportedError: Integer;
    {class} function _GetEMV_TransmissionError: Integer;
    {class} property EMV_AccessDeniedError: Integer read _GetEMV_AccessDeniedError;
    {class} property EMV_AlreadyInitializedError: Integer read _GetEMV_AlreadyInitializedError;
    {class} property EMV_AuthenticationError: Integer read _GetEMV_AuthenticationError;
    {class} property EMV_BitCountError: Integer read _GetEMV_BitCountError;
    {class} property EMV_BufferNotEnoughError: Integer read _GetEMV_BufferNotEnoughError;
    {class} property EMV_BufferOverflowError: Integer read _GetEMV_BufferOverflowError;
    {class} property EMV_BufferUnderflowError: Integer read _GetEMV_BufferUnderflowError;
    {class} property EMV_CollisionError: Integer read _GetEMV_CollisionError;
    {class} property EMV_CommunicationError: Integer read _GetEMV_CommunicationError;
    {class} property EMV_DataLoadError: Integer read _GetEMV_DataLoadError;
    {class} property EMV_EmptyCandidateList: Integer read _GetEMV_EmptyCandidateList;
    {class} property EMV_FramingError: Integer read _GetEMV_FramingError;
    {class} property EMV_GeneralError: Integer read _GetEMV_GeneralError;
    {class} property EMV_InvalidCRCError: Integer read _GetEMV_InvalidCRCError;
    {class} property EMV_InvalidFormatError: Integer read _GetEMV_InvalidFormatError;
    {class} property EMV_InvalidParameterError: Integer read _GetEMV_InvalidParameterError;
    {class} property EMV_InvalidProcessInterface: Integer read _GetEMV_InvalidProcessInterface;
    {class} property EMV_InvalidServiceInterface: Integer read _GetEMV_InvalidServiceInterface;
    {class} property EMV_MandatoryTagLengthError: Integer read _GetEMV_MandatoryTagLengthError;
    {class} property EMV_MandatoryTagNotFoundError: Integer read _GetEMV_MandatoryTagNotFoundError;
    {class} property EMV_NoCardError: Integer read _GetEMV_NoCardError;
    {class} property EMV_NotInitializedError: Integer read _GetEMV_NotInitializedError;
    {class} property EMV_OK: Integer read _GetEMV_OK;
    {class} property EMV_ParityError: Integer read _GetEMV_ParityError;
    {class} property EMV_ProtocolError: Integer read _GetEMV_ProtocolError;
    {class} property EMV_RedundantPrimitiveDataError: Integer read _GetEMV_RedundantPrimitiveDataError;
    {class} property EMV_Running: Integer read _GetEMV_Running;
    {class} property EMV_SFIFormatError: Integer read _GetEMV_SFIFormatError;
    {class} property EMV_SwitchInterface: Integer read _GetEMV_SwitchInterface;
    {class} property EMV_TagNotFoundError: Integer read _GetEMV_TagNotFoundError;
    {class} property EMV_TimeoutError: Integer read _GetEMV_TimeoutError;
    {class} property EMV_TransactionCanceled: Integer read _GetEMV_TransactionCanceled;
    {class} property EMV_TransactionFinished: Integer read _GetEMV_TransactionFinished;
    {class} property EMV_TransactionTypeNotSupportedError: Integer read _GetEMV_TransactionTypeNotSupportedError;
    {class} property EMV_TransmissionError: Integer read _GetEMV_TransmissionError;
  end;

  [JavaSignature('br/com/gertec/epwp/Defines$EMV_Result')]
  JDefines_EMV_Result = interface(IJavaInstance)
    ['{59E06B4D-5748-452F-9873-10CAD2BD7583}']
  end;
  TJDefines_EMV_Result = class(TJavaGenericImport<JDefines_EMV_ResultClass, JDefines_EMV_Result>) end;

  JEMV_TransactionInputClass = interface(JObjectClass)
    ['{14B96F3E-55A6-484F-A741-9B610528BCBC}']
    {class} function create(P1: TJavaArray<Byte>): JEMV_TransactionInput; cdecl;
    {class} function init: JEMV_TransactionInput; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/EMV_TransactionInput')]
  JEMV_TransactionInput = interface(JObject)
    ['{CD59D7D9-E5C6-4682-9DE0-E90C554A5A3D}']
    function getAmount: Int64; cdecl;
    function getAmountOther: Int64; cdecl;
    function getCurrencyCode: JString; cdecl;
    function getCurrencyExponent: JString; cdecl;
    function getTransactionType: Int64; cdecl;
  end;
  TJEMV_TransactionInput = class(TJavaGenericImport<JEMV_TransactionInputClass, JEMV_TransactionInput>) end;

  JMainClass = interface(JObjectClass)
    ['{F1D4371B-0CBA-490B-8754-06EB6B371302}']
    {class} function _Getemv: JEmvCore;
    {class} procedure _Setemv(Value: JEmvCore);
    {class} function _Getinput: JEMV_TransactionInput;
    {class} procedure _Setinput(Value: JEMV_TransactionInput);
    {class} function init: JMain; cdecl; overload;
    {class} property emv: JEmvCore read _Getemv write _Setemv;
    {class} property input: JEMV_TransactionInput read _Getinput write _Setinput;
  end;

  [JavaSignature('br/com/gertec/epwp/Main')]
  JMain = interface(JObject)
    ['{5C9EEBEF-FE4E-4CC5-BE76-6CE31CCF8A6C}']
  end;
  TJMain = class(TJavaGenericImport<JMainClass, JMain>) end;

  JMain_1Class = interface(JThreadClass)
    ['{98A836E6-D868-4EBE-B00A-04FDFFDED288}']
  end;

  [JavaSignature('br/com/gertec/epwp/Main$1')]
  JMain_1 = interface(JThread)
    ['{D1E5F7DB-DC2C-4FA8-876A-228350159EDD}']
    procedure run; cdecl;
  end;
  TJMain_1 = class(TJavaGenericImport<JMain_1Class, JMain_1>) end;

  Jepwp_ParserClass = interface(JObjectClass)
    ['{CF20FADF-E9AA-4EB3-AEF4-DE4331939FBD}']
    {class} function init: Jepwp_Parser; cdecl;
    {class} function parseCAPKString(P1: JString): TJavaObjectArray<JString>; cdecl;
    {class} function parseTLVString(P1: JString): TJavaObjectArray<JString>; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/Parser')]
  Jepwp_Parser = interface(JObject)
    ['{B4E1E2CF-DC0F-47E7-89D8-F2061E6D89BD}']
  end;
  TJepwp_Parser = class(TJavaGenericImport<Jepwp_ParserClass, Jepwp_Parser>) end;

  JByteUtilClass = interface(JObjectClass)
    ['{0D904F34-D91D-466E-B2AC-DF2F1B16B60A}']
    {class} function ASCII_To_BCD(P1: TJavaArray<Byte>; P2: Integer): TJavaArray<Byte>; cdecl;
    {class} function ascii2Bcd(P1: JString): TJavaArray<Byte>; cdecl;
    {class} function ascii2Bytes(P1: JString): TJavaArray<Byte>; cdecl;
    {class} function bcd2Ascii(P1: TJavaArray<Byte>): JString; cdecl;
    {class} function bcd2Long(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Int64; cdecl;
    {class} function bytes2HexString(P1: TJavaArray<Byte>): JString; cdecl; overload;
    {class} function bytes2HexString(P1: TJavaArray<Byte>; P2: Integer): JString; cdecl; overload;
    {class} function bytes2HexString(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): JString; cdecl; overload;
    {class} function bytes2Int(P1: TJavaArray<Byte>): Integer; cdecl;
    {class} procedure dumpHex(P1: JString; P2: TJavaArray<Byte>); cdecl;
    {class} function fromBytes(P1: TJavaArray<Byte>): JString; cdecl; overload;
    {class} function fromBytes(P1: TJavaArray<Byte>; P2: JString): JString; cdecl; overload;
    {class} function fromGB2312(P1: TJavaArray<Byte>): JString; cdecl;
    {class} function fromGB2312New(P1: JString): JString; cdecl;
    {class} function fromGBK(P1: TJavaArray<Byte>): JString; cdecl;
    {class} function fromUtf8(P1: TJavaArray<Byte>): JString; cdecl;
    {class} function hex2byte(P1: Char): Byte; cdecl;
    {class} function hexString2Bytes(P1: JString): TJavaArray<Byte>; cdecl;
    {class} function int2Bytes(P1: Integer): TJavaArray<Byte>; cdecl;
    {class} function int3ToHexString(P1: Integer): JString; cdecl;
    {class} function intToBytes(P1: Integer): TJavaArray<Byte>; cdecl;
    {class} function intToHexString(P1: Integer): JString; cdecl;
    {class} function merage(P1: TJavaBiArray<Byte>): TJavaArray<Byte>; cdecl;
    {class} function str2HexStr(P1: JString): JString; cdecl;
    {class} function subBytes(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): TJavaArray<Byte>; cdecl;
    {class} function toBytes(P1: JString): TJavaArray<Byte>; cdecl; overload;
    {class} function toBytes(P1: JString; P2: JString): TJavaArray<Byte>; cdecl; overload;
    {class} function toGB2312(P1: JString): TJavaArray<Byte>; cdecl;
    {class} function toGBK(P1: JString): TJavaArray<Byte>; cdecl;
    {class} function toUtf8(P1: JString): TJavaArray<Byte>; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/ByteUtil')]
  JByteUtil = interface(JObject)
    ['{3D2B8B80-D37F-4C10-993F-7BFAAB8DA6E6}']
  end;
  TJByteUtil = class(TJavaGenericImport<JByteUtilClass, JByteUtil>) end;

  JCAPKClass = interface(JObjectClass)
    ['{A4301493-2384-436C-A3A1-31CC7E1344C3}']
    {class} function init: JCAPK; cdecl;
    {class} function parse(P1: TJavaArray<Byte>): JList; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/CAPK')]
  JCAPK = interface(JObject)
    ['{B54B1353-9066-4B31-86CE-58969B994FBE}']
  end;
  TJCAPK = class(TJavaGenericImport<JCAPKClass, JCAPK>) end;

  JMoneyUtilClass = interface(JObjectClass)
    ['{5063C798-42BF-4C9A-A7C1-144F006C796E}']
    {class} function fen2yuan(P1: Int64): JString; cdecl;
    {class} function fenTrans2Yuan(P1: JLong): JDouble; cdecl;
    {class} function formatDouble2Str4Money(P1: Double): JString; cdecl;
    {class} function init: JMoneyUtil; cdecl;
    {class} function toCent(P1: JString): JString; cdecl;
    {class} function yuan2fen(P1: Double): Int64; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/MoneyUtil')]
  JMoneyUtil = interface(JObject)
    ['{845C9252-B52F-4635-8AF2-620D8DA8B23F}']
  end;
  TJMoneyUtil = class(TJavaGenericImport<JMoneyUtilClass, JMoneyUtil>) end;

  JNumberUtilClass = interface(JObjectClass)
    ['{1DE5E916-528A-4B05-8B87-B67431AC25A8}']
    {class} function parseInt(P1: JString): Integer; cdecl;
    {class} function parseLong(P1: JString): Int64; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/NumberUtil')]
  JNumberUtil = interface(JObject)
    ['{95AF4CC2-561D-4371-A7BE-21D4094E1D40}']
  end;
  TJNumberUtil = class(TJavaGenericImport<JNumberUtilClass, JNumberUtil>) end;

  JPayPassTermConfigClass = interface(JObjectClass)
    ['{427C252D-1F00-444B-BD92-9D51F1079D76}']
    {class} function init: JPayPassTermConfig; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/PayPassTermConfig')]
  JPayPassTermConfig = interface(JObject)
    ['{7E68D8EC-DA48-4F49-A73B-C08CB26FF0FF}']
    function _GetMaximumRelayRGP: TJavaArray<Byte>;
    procedure _SetMaximumRelayRGP(Value: TJavaArray<Byte>);
    function _GetMaximumRelayRGPfalg: TJavaArray<Byte>;
    procedure _SetMaximumRelayRGPfalg(Value: TJavaArray<Byte>);
    function _GetMinimumRRGP: TJavaArray<Byte>;
    procedure _SetMinimumRRGP(Value: TJavaArray<Byte>);
    function _GetMinimumRRGPfalg: TJavaArray<Byte>;
    procedure _SetMinimumRRGPfalg(Value: TJavaArray<Byte>);
    function _GetRelayRAT: TJavaArray<Byte>;
    procedure _SetRelayRAT(Value: TJavaArray<Byte>);
    function _GetRelayRATfalg: TJavaArray<Byte>;
    procedure _SetRelayRATfalg(Value: TJavaArray<Byte>);
    function _GetRelayRTTMT: TJavaArray<Byte>;
    procedure _SetRelayRTTMT(Value: TJavaArray<Byte>);
    function _GetRelayRTTMTfalg: TJavaArray<Byte>;
    procedure _SetRelayRTTMTfalg(Value: TJavaArray<Byte>);
    function _GetTerminalETTFRRCAPDU: TJavaArray<Byte>;
    procedure _SetTerminalETTFRRCAPDU(Value: TJavaArray<Byte>);
    function _GetTerminalETTFRRCAPDUfalg: TJavaArray<Byte>;
    procedure _SetTerminalETTFRRCAPDUfalg(Value: TJavaArray<Byte>);
    function _GetTerminalETTFRRRAPDU: TJavaArray<Byte>;
    procedure _SetTerminalETTFRRRAPDU(Value: TJavaArray<Byte>);
    function _GetTerminalETTFRRRAPDUfalg: TJavaArray<Byte>;
    procedure _SetTerminalETTFRRRAPDUfalg(Value: TJavaArray<Byte>);
    function _GetaucBalanceAfterGAC: TJavaArray<Byte>;
    procedure _SetaucBalanceAfterGAC(Value: TJavaArray<Byte>);
    function _GetaucBalanceBeforeGAC: TJavaArray<Byte>;
    procedure _SetaucBalanceBeforeGAC(Value: TJavaArray<Byte>);
    function _GetaucInterDevSerNum: TJavaArray<Byte>;
    procedure _SetaucInterDevSerNum(Value: TJavaArray<Byte>);
    function _GetaucMaxLifeTimeTorn: TJavaArray<Byte>;
    procedure _SetaucMaxLifeTimeTorn(Value: TJavaArray<Byte>);
    function _GetaucMsgHoldTime: TJavaArray<Byte>;
    procedure _SetaucMsgHoldTime(Value: TJavaArray<Byte>);
    function _GetucBalanceAfterGACFlg: TJavaArray<Byte>;
    procedure _SetucBalanceAfterGACFlg(Value: TJavaArray<Byte>);
    function _GetucBalanceBeforeGACFlg: TJavaArray<Byte>;
    procedure _SetucBalanceBeforeGACFlg(Value: TJavaArray<Byte>);
    function _GetucHoldTimeValue: TJavaArray<Byte>;
    procedure _SetucHoldTimeValue(Value: TJavaArray<Byte>);
    function _GetucHoldTimeValueFlg: TJavaArray<Byte>;
    procedure _SetucHoldTimeValueFlg(Value: TJavaArray<Byte>);
    function _GetucInterDevSerNumFlg: TJavaArray<Byte>;
    procedure _SetucInterDevSerNumFlg(Value: TJavaArray<Byte>);
    function _GetucKernelID: TJavaArray<Byte>;
    procedure _SetucKernelID(Value: TJavaArray<Byte>);
    function _GetucKernelIDFlg: TJavaArray<Byte>;
    procedure _SetucKernelIDFlg(Value: TJavaArray<Byte>);
    function _GetucMaxLifeTimeTornFlg: TJavaArray<Byte>;
    procedure _SetucMaxLifeTimeTornFlg(Value: TJavaArray<Byte>);
    function _GetucMaxNumberTorn: TJavaArray<Byte>;
    procedure _SetucMaxNumberTorn(Value: TJavaArray<Byte>);
    function _GetucMaxNumberTornFlg: TJavaArray<Byte>;
    procedure _SetucMaxNumberTornFlg(Value: TJavaArray<Byte>);
    function _GetucMobileSup: TJavaArray<Byte>;
    procedure _SetucMobileSup(Value: TJavaArray<Byte>);
    function _GetucMobileSupFlg: TJavaArray<Byte>;
    procedure _SetucMobileSupFlg(Value: TJavaArray<Byte>);
    function _GetucMsgHoldTimeFlg: TJavaArray<Byte>;
    procedure _SetucMsgHoldTimeFlg(Value: TJavaArray<Byte>);
    function addByteArrayElement(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    procedure init; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
    property MaximumRelayRGP: TJavaArray<Byte> read _GetMaximumRelayRGP write _SetMaximumRelayRGP;
    property MaximumRelayRGPfalg: TJavaArray<Byte> read _GetMaximumRelayRGPfalg write _SetMaximumRelayRGPfalg;
    property MinimumRRGP: TJavaArray<Byte> read _GetMinimumRRGP write _SetMinimumRRGP;
    property MinimumRRGPfalg: TJavaArray<Byte> read _GetMinimumRRGPfalg write _SetMinimumRRGPfalg;
    property RelayRAT: TJavaArray<Byte> read _GetRelayRAT write _SetRelayRAT;
    property RelayRATfalg: TJavaArray<Byte> read _GetRelayRATfalg write _SetRelayRATfalg;
    property RelayRTTMT: TJavaArray<Byte> read _GetRelayRTTMT write _SetRelayRTTMT;
    property RelayRTTMTfalg: TJavaArray<Byte> read _GetRelayRTTMTfalg write _SetRelayRTTMTfalg;
    property TerminalETTFRRCAPDU: TJavaArray<Byte> read _GetTerminalETTFRRCAPDU write _SetTerminalETTFRRCAPDU;
    property TerminalETTFRRCAPDUfalg: TJavaArray<Byte> read _GetTerminalETTFRRCAPDUfalg write _SetTerminalETTFRRCAPDUfalg;
    property TerminalETTFRRRAPDU: TJavaArray<Byte> read _GetTerminalETTFRRRAPDU write _SetTerminalETTFRRRAPDU;
    property TerminalETTFRRRAPDUfalg: TJavaArray<Byte> read _GetTerminalETTFRRRAPDUfalg write _SetTerminalETTFRRRAPDUfalg;
    property aucBalanceAfterGAC: TJavaArray<Byte> read _GetaucBalanceAfterGAC write _SetaucBalanceAfterGAC;
    property aucBalanceBeforeGAC: TJavaArray<Byte> read _GetaucBalanceBeforeGAC write _SetaucBalanceBeforeGAC;
    property aucInterDevSerNum: TJavaArray<Byte> read _GetaucInterDevSerNum write _SetaucInterDevSerNum;
    property aucMaxLifeTimeTorn: TJavaArray<Byte> read _GetaucMaxLifeTimeTorn write _SetaucMaxLifeTimeTorn;
    property aucMsgHoldTime: TJavaArray<Byte> read _GetaucMsgHoldTime write _SetaucMsgHoldTime;
    property ucBalanceAfterGACFlg: TJavaArray<Byte> read _GetucBalanceAfterGACFlg write _SetucBalanceAfterGACFlg;
    property ucBalanceBeforeGACFlg: TJavaArray<Byte> read _GetucBalanceBeforeGACFlg write _SetucBalanceBeforeGACFlg;
    property ucHoldTimeValue: TJavaArray<Byte> read _GetucHoldTimeValue write _SetucHoldTimeValue;
    property ucHoldTimeValueFlg: TJavaArray<Byte> read _GetucHoldTimeValueFlg write _SetucHoldTimeValueFlg;
    property ucInterDevSerNumFlg: TJavaArray<Byte> read _GetucInterDevSerNumFlg write _SetucInterDevSerNumFlg;
    property ucKernelID: TJavaArray<Byte> read _GetucKernelID write _SetucKernelID;
    property ucKernelIDFlg: TJavaArray<Byte> read _GetucKernelIDFlg write _SetucKernelIDFlg;
    property ucMaxLifeTimeTornFlg: TJavaArray<Byte> read _GetucMaxLifeTimeTornFlg write _SetucMaxLifeTimeTornFlg;
    property ucMaxNumberTorn: TJavaArray<Byte> read _GetucMaxNumberTorn write _SetucMaxNumberTorn;
    property ucMaxNumberTornFlg: TJavaArray<Byte> read _GetucMaxNumberTornFlg write _SetucMaxNumberTornFlg;
    property ucMobileSup: TJavaArray<Byte> read _GetucMobileSup write _SetucMobileSup;
    property ucMobileSupFlg: TJavaArray<Byte> read _GetucMobileSupFlg write _SetucMobileSupFlg;
    property ucMsgHoldTimeFlg: TJavaArray<Byte> read _GetucMsgHoldTimeFlg write _SetucMsgHoldTimeFlg;
  end;
  TJPayPassTermConfig = class(TJavaGenericImport<JPayPassTermConfigClass, JPayPassTermConfig>) end;

  Jutil_StringUtilsClass = interface(JObjectClass)
    ['{A9AE660A-1B81-4814-A4CF-C4A788E9287B}']
    {class} function init: Jutil_StringUtils; cdecl;
    {class} function isEmpty(P1: JString): Boolean; cdecl;
    {class} function string2BCD(P1: JString): TJavaArray<Byte>; cdecl; overload;
    {class} function string2BCD(P1: JString; P2: Integer): TJavaArray<Byte>; cdecl; overload;
  end;

  [JavaSignature('br/com/gertec/epwp/util/StringUtils')]
  Jutil_StringUtils = interface(JObject)
    ['{7FB019E2-EB10-47DE-AAE5-CB98FD5830B9}']
  end;
  TJutil_StringUtils = class(TJavaGenericImport<Jutil_StringUtilsClass, Jutil_StringUtils>) end;

  JTLVClass = interface(JObjectClass)
    ['{B2F7101D-FAE3-469A-958B-75E57D40855C}']
    {class} procedure anaTag(P1: TJavaArray<Byte>; P2: JHashMap); cdecl; overload;
    {class} procedure anaTag(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: JMap); cdecl; overload;
    {class} procedure decodeBF0C(P1: TJavaArray<Byte>; P2: JHashMap); cdecl;
    {class} function decodeDOL(P1: TJavaArray<Byte>): TJavaObjectArray<JTLV_DolItem>; cdecl; overload;
    {class} function decodeDOL(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): TJavaObjectArray<JTLV_DolItem>; cdecl; overload;
    {class} function findByTag(P1: TJavaArray<Byte>; P2: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function findByTag(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Integer): TJavaArray<Byte>; cdecl; overload;
    {class} function fromData(P1: JString; P2: TJavaArray<Byte>): JTLV; cdecl;
    {class} function fromRawData(P1: TJavaArray<Byte>; P2: Integer): JTLV; cdecl; overload;
    {class} function fromRawData(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>; P4: Integer): JTLV; cdecl; overload;
    {class} function haveAllTag(P1: JHashMap; P2: JString): Boolean; cdecl;
    {class} function init: JTLV; cdecl;
    {class} procedure main(P1: TJavaObjectArray<JString>); cdecl;
    {class} function makeLinkPinOK(P1: JString): JString; cdecl;
    {class} function makePol(P1: TJavaObjectArray<JTLV_DolItem>; P2: JHashMap): JString; cdecl;
    {class} function pack(P1: JHashMap; P2: JString): JString; cdecl;
    {class} procedure printAIP(P1: JString); cdecl;
    {class} procedure printCvmList(P1: JString); cdecl;
    {class} procedure printTVR(P1: JString); cdecl;
    {class} procedure printXinneng(P1: JString); cdecl;
    {class} function toString(P1: TJavaArray<Byte>): JString; cdecl; overload;
    {class} procedure toString(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: JStringBuilder; P5: JString); cdecl; overload;
  end;

  [JavaSignature('br/com/gertec/epwp/util/TLV')]
  JTLV = interface(JObject)
    ['{89795C78-0FC0-451A-9A44-099B70A38CB1}']
    function _Getname: JString;
    procedure _Setname(Value: JString);
    function _Getsubs: TJavaObjectArray<JTLV>;
    procedure _Setsubs(Value: TJavaObjectArray<JTLV>);
    function equals(P1: JObject): Boolean; cdecl;
    function getBCDValue: TJavaArray<Byte>; cdecl;
    function getByteValue: Byte; cdecl;
    function getBytesValue: TJavaArray<Byte>; cdecl;
    function getGBKNumberValue: TJavaArray<Byte>; cdecl;
    function getGBKValue: JString; cdecl;
    function getLength: Integer; cdecl;
    function getNumberValue: JString; cdecl;
    function getRawData: TJavaArray<Byte>; cdecl;
    function getTLLength: Integer; cdecl;
    function getTag: JString; cdecl;
    function getValue: JString; cdecl;
    function isValid: Boolean; cdecl;
    function toString: JString; cdecl; overload;
    property name: JString read _Getname write _Setname;
    property subs: TJavaObjectArray<JTLV> read _Getsubs write _Setsubs;
  end;
  TJTLV = class(TJavaGenericImport<JTLVClass, JTLV>) end;

  JTLV_DolItemClass = interface(JObjectClass)
    ['{F2A8560E-C31F-412C-A6BE-D0E7F1C88C35}']
    {class} function init: JTLV_DolItem; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/TLV$DolItem')]
  JTLV_DolItem = interface(JObject)
    ['{3CCCC704-EE9F-47BD-86DD-CE4942B29841}']
    function _Getlen: Integer;
    procedure _Setlen(Value: Integer);
    function _Gettag: JString;
    procedure _Settag(Value: JString);
    function toString: JString; cdecl;
    property len: Integer read _Getlen write _Setlen;
    property tag: JString read _Gettag write _Settag;
  end;
  TJTLV_DolItem = class(TJavaGenericImport<JTLV_DolItemClass, JTLV_DolItem>) end;

  JTLVListClass = interface(JObjectClass)
    ['{60EE38A2-CD94-402B-9237-54CDCCD92AC3}']
    {class} function fromBinary(P1: TJavaArray<Byte>): JTLVList; cdecl; overload;
    {class} function fromBinary(P1: JString): JTLVList; cdecl; overload;
    {class} function init: JTLVList; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/TLVList')]
  JTLVList = interface(JObject)
    ['{6A3DE452-4E94-4E48-BCFF-5E5C076D80C7}']
    procedure addTLV(P1: JTLV); cdecl;
    function &contains(P1: JString): Boolean; cdecl;
    function getTLV(P1: JString): JTLV; cdecl; overload;
    function getTLV(P1: Integer): JTLV; cdecl; overload;
    function getTLVVL(P1: JString): JString; cdecl;
    function getTLVs(P1: TJavaObjectArray<JString>): JTLVList; cdecl;
    procedure retainAll(P1: TJavaObjectArray<JString>); cdecl;
    function size: Integer; cdecl;
    function toBinary: TJavaArray<Byte>; cdecl;
    function toString: JString; cdecl;
  end;
  TJTLVList = class(TJavaGenericImport<JTLVListClass, JTLVList>) end;

  JTLV_Class = interface(JObjectClass)
    ['{931CBAEC-5B57-4950-9C23-2A7FDB034925}']
    {class} function init: JTLV_; cdecl;
  end;

  [JavaSignature('br/com/gertec/epwp/util/TLV_')]
  JTLV_ = interface(JObject)
    ['{49CA25F3-5DBE-41D7-91CF-589DB628FDF6}']
    function _Getlen: TJavaArray<Byte>;
    procedure _Setlen(Value: TJavaArray<Byte>);
    function _Gettag: TJavaArray<Byte>;
    procedure _Settag(Value: TJavaArray<Byte>);
    function _Getvalue: TJavaArray<Byte>;
    procedure _Setvalue(Value: TJavaArray<Byte>);
    property len: TJavaArray<Byte> read _Getlen write _Setlen;
    property tag: TJavaArray<Byte> read _Gettag write _Settag;
    property value: TJavaArray<Byte> read _Getvalue write _Setvalue;
  end;
  TJTLV_ = class(TJavaGenericImport<JTLV_Class, JTLV_>) end;

  JGPOSClass = interface(JObjectClass)
    ['{E262CDA8-571E-4141-B0BE-DA2F427F7EC2}']
    {class} function init(P1: JContext): JGPOS; cdecl;
  end;

  [JavaSignature('br/com/gertec/gpos/GPOS')]
  JGPOS = interface(JObject)
    ['{1C8A1C4C-6194-4BC2-8E7E-4A45B227BF11}']
    function KeyPresenceTest(P1: JKeyType; P2: JKeyPurpose; P3: Integer): Boolean; cdecl;
  end;
  TJGPOS = class(TJavaGenericImport<JGPOSClass, JGPOS>) end;

  JGPOS_1Class = interface(JThreadClass)
    ['{3B57A5C1-2689-4E45-8860-E72A7B3132CB}']
  end;

  [JavaSignature('br/com/gertec/gpos/GPOS$1')]
  JGPOS_1 = interface(JThread)
    ['{35D1EB9E-74F9-4C24-BBDD-17C23D5F8206}']
    procedure run; cdecl;
  end;
  TJGPOS_1 = class(TJavaGenericImport<JGPOS_1Class, JGPOS_1>) end;

  JKeyPurposeClass = interface(JEnumClass)
    ['{22E57CF2-8172-4A32-90E5-B9ACAB6129A8}']
    {class} function _GetDATA: JKeyPurpose;
    {class} function _GetPIN: JKeyPurpose;
    {class} function valueOf(P1: JString): JKeyPurpose; cdecl; overload;
    {class} function valueOf(P1: Integer): JKeyPurpose; cdecl; overload;
    {class} function values: TJavaObjectArray<JKeyPurpose>; cdecl;
    {class} property DATA: JKeyPurpose read _GetDATA;
    {class} property PIN: JKeyPurpose read _GetPIN;
  end;

  [JavaSignature('br/com/gertec/gpos/constants/KeyPurpose')]
  JKeyPurpose = interface(JEnum)
    ['{17350728-5F22-4E6B-BF9E-DE0BD3EB9FD9}']
    function getValue: Integer; cdecl;
  end;
  TJKeyPurpose = class(TJavaGenericImport<JKeyPurposeClass, JKeyPurpose>) end;

  JKeyTypeClass = interface(JEnumClass)
    ['{3D7F4C5C-AC57-4A92-BADE-B62C5ABE2889}']
    {class} function _GetDES: JKeyType;
    {class} function _GetDUKPT_DES: JKeyType;
    {class} function _GetDUKPT_TDES: JKeyType;
    {class} function _GetTDES: JKeyType;
    {class} function valueOf(P1: JString): JKeyType; cdecl; overload;
    {class} function valueOf(P1: Integer): JKeyType; cdecl; overload;
    {class} function values: TJavaObjectArray<JKeyType>; cdecl;
    {class} property DES: JKeyType read _GetDES;
    {class} property DUKPT_DES: JKeyType read _GetDUKPT_DES;
    {class} property DUKPT_TDES: JKeyType read _GetDUKPT_TDES;
    {class} property TDES: JKeyType read _GetTDES;
  end;

  [JavaSignature('br/com/gertec/gpos/constants/KeyType')]
  JKeyType = interface(JEnum)
    ['{3738FD5F-9DCF-4687-8DBC-7732CBC552BC}']
    function getValue: Integer; cdecl;
  end;
  TJKeyType = class(TJavaGenericImport<JKeyTypeClass, JKeyType>) end;

  JBuildConstantsClass = interface(IJavaClass)
    ['{2CC60766-D227-4743-8559-C57335C653C6}']
    {class} function _GetDEBUG: Boolean;
    {class} property DEBUG: Boolean read _GetDEBUG;
  end;

  [JavaSignature('br/com/gertec/ppcomp/BuildConstants')]
  JBuildConstants = interface(IJavaInstance)
    ['{5B8896D3-8821-4211-9CEE-DA81300D1EF5}']
  end;
  TJBuildConstants = class(TJavaGenericImport<JBuildConstantsClass, JBuildConstants>) end;

  JIPPCompConstantsClass = interface(IJavaClass)
    ['{4207B692-CD8A-4D6F-AB18-57AC5D0F11BB}']
    {class} function _GetPPCOMP_ALREADYOPEN: Integer;
    {class} function _GetPPCOMP_BACKSP: Integer;
    {class} function _GetPPCOMP_CANCEL: Integer;
    {class} function _GetPPCOMP_CARDAPPNAUT: Integer;
    {class} function _GetPPCOMP_CARDAPPNAV: Integer;
    {class} function _GetPPCOMP_CARDBLOCKED: Integer;
    {class} function _GetPPCOMP_CARDERRSTRUCT: Integer;
    {class} function _GetPPCOMP_CARDEXPIRED: Integer;
    {class} function _GetPPCOMP_CARDINV: Integer;
    {class} function _GetPPCOMP_CARDINVALIDAT: Integer;
    {class} function _GetPPCOMP_CARDINVDATA: Integer;
    {class} function _GetPPCOMP_CARDNAUTH: Integer;
    {class} function _GetPPCOMP_CARDNOTEFFECT: Integer;
    {class} function _GetPPCOMP_CARDPROBLEMS: Integer;
    {class} function _GetPPCOMP_COMMERR: Integer;
    {class} function _GetPPCOMP_COMMTOUT: Integer;
    {class} function _GetPPCOMP_CTLSSAPPNAUT: Integer;
    {class} function _GetPPCOMP_CTLSSAPPNAV: Integer;
    {class} function _GetPPCOMP_CTLSSCOMMERR: Integer;
    {class} function _GetPPCOMP_CTLSSINVALIDAT: Integer;
    {class} function _GetPPCOMP_CTLSSMULTIPLE: Integer;
    {class} function _GetPPCOMP_CTLSSPROBLEMS: Integer;
    {class} function _GetPPCOMP_DATANOTFOUND: Integer;
    {class} function _GetPPCOMP_DUMBCARD: Integer;
    {class} function _GetPPCOMP_ERR: Integer;
    {class} function _GetPPCOMP_ERRCARD: Integer;
    {class} function _GetPPCOMP_ERRFALLBACK: Integer;
    {class} function _GetPPCOMP_ERRMANDAT: Integer;
    {class} function _GetPPCOMP_ERRMAXAID: Integer;
    {class} function _GetPPCOMP_ERRPIN: Integer;
    {class} function _GetPPCOMP_ERRPKTSEC: Integer;
    {class} function _GetPPCOMP_EXECERR: Integer;
    {class} function _GetPPCOMP_F1: Integer;
    {class} function _GetPPCOMP_F2: Integer;
    {class} function _GetPPCOMP_F3: Integer;
    {class} function _GetPPCOMP_F4: Integer;
    {class} function _GetPPCOMP_INTERR: Integer;
    {class} function _GetPPCOMP_INVAMOUNT: Integer;
    {class} function _GetPPCOMP_INVCALL: Integer;
    {class} function _GetPPCOMP_INVMODEL: Integer;
    {class} function _GetPPCOMP_INVPARM: Integer;
    {class} function _GetPPCOMP_JNIERR: Integer;
    {class} function _GetPPCOMP_LIMITEXC: Integer;
    {class} function _GetPPCOMP_MCDATAERR: Integer;
    {class} function _GetPPCOMP_MFERR: Integer;
    {class} function _GetPPCOMP_MFERRFMT: Integer;
    {class} function _GetPPCOMP_MFNFOUND: Integer;
    {class} function _GetPPCOMP_NOAPPLIC: Integer;
    {class} function _GetPPCOMP_NOBALANCE: Integer;
    {class} function _GetPPCOMP_NOCARD: Integer;
    {class} function _GetPPCOMP_NOFUNC: Integer;
    {class} function _GetPPCOMP_NOSAM: Integer;
    {class} function _GetPPCOMP_NOSEC: Integer;
    {class} function _GetPPCOMP_NOTIFY: Integer;
    {class} function _GetPPCOMP_NOTOPEN: Integer;
    {class} function _GetPPCOMP_OK: Integer;
    {class} function _GetPPCOMP_PARAMNULLERR: Integer;
    {class} function _GetPPCOMP_PINBUSY: Integer;
    {class} function _GetPPCOMP_PORTERR: Integer;
    {class} function _GetPPCOMP_PROCESSING: Integer;
    {class} function _GetPPCOMP_RSPERR: Integer;
    {class} function _GetPPCOMP_RSPOVRFL: Integer;
    {class} function _GetPPCOMP_SAMERR: Integer;
    {class} function _GetPPCOMP_SAMINV: Integer;
    {class} function _GetPPCOMP_TABERR: Integer;
    {class} function _GetPPCOMP_TABEXP: Integer;
    {class} function _GetPPCOMP_TIMEOUT: Integer;
    {class} function _GetPPCOMP_UNKNOWNSTAT: Integer;
    {class} function _GetPPCOMP_VCINVCURR: Integer;
    {class} property PPCOMP_ALREADYOPEN: Integer read _GetPPCOMP_ALREADYOPEN;
    {class} property PPCOMP_BACKSP: Integer read _GetPPCOMP_BACKSP;
    {class} property PPCOMP_CANCEL: Integer read _GetPPCOMP_CANCEL;
    {class} property PPCOMP_CARDAPPNAUT: Integer read _GetPPCOMP_CARDAPPNAUT;
    {class} property PPCOMP_CARDAPPNAV: Integer read _GetPPCOMP_CARDAPPNAV;
    {class} property PPCOMP_CARDBLOCKED: Integer read _GetPPCOMP_CARDBLOCKED;
    {class} property PPCOMP_CARDERRSTRUCT: Integer read _GetPPCOMP_CARDERRSTRUCT;
    {class} property PPCOMP_CARDEXPIRED: Integer read _GetPPCOMP_CARDEXPIRED;
    {class} property PPCOMP_CARDINV: Integer read _GetPPCOMP_CARDINV;
    {class} property PPCOMP_CARDINVALIDAT: Integer read _GetPPCOMP_CARDINVALIDAT;
    {class} property PPCOMP_CARDINVDATA: Integer read _GetPPCOMP_CARDINVDATA;
    {class} property PPCOMP_CARDNAUTH: Integer read _GetPPCOMP_CARDNAUTH;
    {class} property PPCOMP_CARDNOTEFFECT: Integer read _GetPPCOMP_CARDNOTEFFECT;
    {class} property PPCOMP_CARDPROBLEMS: Integer read _GetPPCOMP_CARDPROBLEMS;
    {class} property PPCOMP_COMMERR: Integer read _GetPPCOMP_COMMERR;
    {class} property PPCOMP_COMMTOUT: Integer read _GetPPCOMP_COMMTOUT;
    {class} property PPCOMP_CTLSSAPPNAUT: Integer read _GetPPCOMP_CTLSSAPPNAUT;
    {class} property PPCOMP_CTLSSAPPNAV: Integer read _GetPPCOMP_CTLSSAPPNAV;
    {class} property PPCOMP_CTLSSCOMMERR: Integer read _GetPPCOMP_CTLSSCOMMERR;
    {class} property PPCOMP_CTLSSINVALIDAT: Integer read _GetPPCOMP_CTLSSINVALIDAT;
    {class} property PPCOMP_CTLSSMULTIPLE: Integer read _GetPPCOMP_CTLSSMULTIPLE;
    {class} property PPCOMP_CTLSSPROBLEMS: Integer read _GetPPCOMP_CTLSSPROBLEMS;
    {class} property PPCOMP_DATANOTFOUND: Integer read _GetPPCOMP_DATANOTFOUND;
    {class} property PPCOMP_DUMBCARD: Integer read _GetPPCOMP_DUMBCARD;
    {class} property PPCOMP_ERR: Integer read _GetPPCOMP_ERR;
    {class} property PPCOMP_ERRCARD: Integer read _GetPPCOMP_ERRCARD;
    {class} property PPCOMP_ERRFALLBACK: Integer read _GetPPCOMP_ERRFALLBACK;
    {class} property PPCOMP_ERRMANDAT: Integer read _GetPPCOMP_ERRMANDAT;
    {class} property PPCOMP_ERRMAXAID: Integer read _GetPPCOMP_ERRMAXAID;
    {class} property PPCOMP_ERRPIN: Integer read _GetPPCOMP_ERRPIN;
    {class} property PPCOMP_ERRPKTSEC: Integer read _GetPPCOMP_ERRPKTSEC;
    {class} property PPCOMP_EXECERR: Integer read _GetPPCOMP_EXECERR;
    {class} property PPCOMP_F1: Integer read _GetPPCOMP_F1;
    {class} property PPCOMP_F2: Integer read _GetPPCOMP_F2;
    {class} property PPCOMP_F3: Integer read _GetPPCOMP_F3;
    {class} property PPCOMP_F4: Integer read _GetPPCOMP_F4;
    {class} property PPCOMP_INTERR: Integer read _GetPPCOMP_INTERR;
    {class} property PPCOMP_INVAMOUNT: Integer read _GetPPCOMP_INVAMOUNT;
    {class} property PPCOMP_INVCALL: Integer read _GetPPCOMP_INVCALL;
    {class} property PPCOMP_INVMODEL: Integer read _GetPPCOMP_INVMODEL;
    {class} property PPCOMP_INVPARM: Integer read _GetPPCOMP_INVPARM;
    {class} property PPCOMP_JNIERR: Integer read _GetPPCOMP_JNIERR;
    {class} property PPCOMP_LIMITEXC: Integer read _GetPPCOMP_LIMITEXC;
    {class} property PPCOMP_MCDATAERR: Integer read _GetPPCOMP_MCDATAERR;
    {class} property PPCOMP_MFERR: Integer read _GetPPCOMP_MFERR;
    {class} property PPCOMP_MFERRFMT: Integer read _GetPPCOMP_MFERRFMT;
    {class} property PPCOMP_MFNFOUND: Integer read _GetPPCOMP_MFNFOUND;
    {class} property PPCOMP_NOAPPLIC: Integer read _GetPPCOMP_NOAPPLIC;
    {class} property PPCOMP_NOBALANCE: Integer read _GetPPCOMP_NOBALANCE;
    {class} property PPCOMP_NOCARD: Integer read _GetPPCOMP_NOCARD;
    {class} property PPCOMP_NOFUNC: Integer read _GetPPCOMP_NOFUNC;
    {class} property PPCOMP_NOSAM: Integer read _GetPPCOMP_NOSAM;
    {class} property PPCOMP_NOSEC: Integer read _GetPPCOMP_NOSEC;
    {class} property PPCOMP_NOTIFY: Integer read _GetPPCOMP_NOTIFY;
    {class} property PPCOMP_NOTOPEN: Integer read _GetPPCOMP_NOTOPEN;
    {class} property PPCOMP_OK: Integer read _GetPPCOMP_OK;
    {class} property PPCOMP_PARAMNULLERR: Integer read _GetPPCOMP_PARAMNULLERR;
    {class} property PPCOMP_PINBUSY: Integer read _GetPPCOMP_PINBUSY;
    {class} property PPCOMP_PORTERR: Integer read _GetPPCOMP_PORTERR;
    {class} property PPCOMP_PROCESSING: Integer read _GetPPCOMP_PROCESSING;
    {class} property PPCOMP_RSPERR: Integer read _GetPPCOMP_RSPERR;
    {class} property PPCOMP_RSPOVRFL: Integer read _GetPPCOMP_RSPOVRFL;
    {class} property PPCOMP_SAMERR: Integer read _GetPPCOMP_SAMERR;
    {class} property PPCOMP_SAMINV: Integer read _GetPPCOMP_SAMINV;
    {class} property PPCOMP_TABERR: Integer read _GetPPCOMP_TABERR;
    {class} property PPCOMP_TABEXP: Integer read _GetPPCOMP_TABEXP;
    {class} property PPCOMP_TIMEOUT: Integer read _GetPPCOMP_TIMEOUT;
    {class} property PPCOMP_UNKNOWNSTAT: Integer read _GetPPCOMP_UNKNOWNSTAT;
    {class} property PPCOMP_VCINVCURR: Integer read _GetPPCOMP_VCINVCURR;
  end;

  [JavaSignature('br/com/gertec/ppcomp/IPPCompConstants')]
  JIPPCompConstants = interface(IJavaInstance)
    ['{139CB186-43F3-4A2E-8AE0-9E6D9E3BFBC2}']
  end;
  TJIPPCompConstants = class(TJavaGenericImport<JIPPCompConstantsClass, JIPPCompConstants>) end;

  JIPPCompDSPCallbacksClass = interface(IJavaClass)
    ['{865D14A1-A55A-470F-A672-AD3BC8EDF79C}']
    {class} function _GetDSPMNU_DOWNARROW: Integer;
    {class} function _GetDSPMNU_UPARROW: Integer;
    {class} function _GetDSP_F_ALIGNMASK: Integer;
    {class} function _GetDSP_F_BHAVMASK: Integer;
    {class} function _GetDSP_F_BLOCK: Integer;
    {class} function _GetDSP_F_CENTER: Integer;
    {class} function _GetDSP_F_DATAENTRY: Integer;
    {class} function _GetDSP_F_DE_ALIGNMASK: Integer;
    {class} function _GetDSP_F_DE_CENTER: Integer;
    {class} function _GetDSP_F_DE_LEFT: Integer;
    {class} function _GetDSP_F_DE_RIGHT: Integer;
    {class} function _GetDSP_F_FREETXT: Integer;
    {class} function _GetDSP_F_HOTKEY: Integer;
    {class} function _GetDSP_F_ICOANIM: Integer;
    {class} function _GetDSP_F_ICOCTLS: Integer;
    {class} function _GetDSP_F_ICOERROR: Integer;
    {class} function _GetDSP_F_ICONMASK: Integer;
    {class} function _GetDSP_F_ICOPCRD: Integer;
    {class} function _GetDSP_F_ICORMC: Integer;
    {class} function _GetDSP_F_ICOSTANIM: Integer;
    {class} function _GetDSP_F_LEFT: Integer;
    {class} function _GetDSP_F_RIGHT: Integer;
    {class} function _GetDSP_F_SHOWIMAGE: Integer;
    {class} function _GetDSP_F_TXT2X16: Integer;
    {class} function _GetDSP_F_TXTAPPINV: Integer;
    {class} function _GetDSP_F_TXTBLKCARD: Integer;
    {class} function _GetDSP_F_TXTBLKPASS: Integer;
    {class} function _GetDSP_F_TXTINSPSC: Integer;
    {class} function _GetDSP_F_TXTINSSC: Integer;
    {class} function _GetDSP_F_TXTINVPASS: Integer;
    {class} function _GetDSP_F_TXTLTABLE: Integer;
    {class} function _GetDSP_F_TXTNEXTBLK: Integer;
    {class} function _GetDSP_F_TXTNMASK: Integer;
    {class} function _GetDSP_F_TXTOKPASS: Integer;
    {class} function _GetDSP_F_TXTPROCESSING: Integer;
    {class} function _GetDSP_F_TXTREMOVCARD: Integer;
    {class} function _GetDSP_F_TXTSEL: Integer;
    {class} function _GetDSP_F_TXTSELECTED: Integer;
    {class} property DSPMNU_DOWNARROW: Integer read _GetDSPMNU_DOWNARROW;
    {class} property DSPMNU_UPARROW: Integer read _GetDSPMNU_UPARROW;
    {class} property DSP_F_ALIGNMASK: Integer read _GetDSP_F_ALIGNMASK;
    {class} property DSP_F_BHAVMASK: Integer read _GetDSP_F_BHAVMASK;
    {class} property DSP_F_BLOCK: Integer read _GetDSP_F_BLOCK;
    {class} property DSP_F_CENTER: Integer read _GetDSP_F_CENTER;
    {class} property DSP_F_DATAENTRY: Integer read _GetDSP_F_DATAENTRY;
    {class} property DSP_F_DE_ALIGNMASK: Integer read _GetDSP_F_DE_ALIGNMASK;
    {class} property DSP_F_DE_CENTER: Integer read _GetDSP_F_DE_CENTER;
    {class} property DSP_F_DE_LEFT: Integer read _GetDSP_F_DE_LEFT;
    {class} property DSP_F_DE_RIGHT: Integer read _GetDSP_F_DE_RIGHT;
    {class} property DSP_F_FREETXT: Integer read _GetDSP_F_FREETXT;
    {class} property DSP_F_HOTKEY: Integer read _GetDSP_F_HOTKEY;
    {class} property DSP_F_ICOANIM: Integer read _GetDSP_F_ICOANIM;
    {class} property DSP_F_ICOCTLS: Integer read _GetDSP_F_ICOCTLS;
    {class} property DSP_F_ICOERROR: Integer read _GetDSP_F_ICOERROR;
    {class} property DSP_F_ICONMASK: Integer read _GetDSP_F_ICONMASK;
    {class} property DSP_F_ICOPCRD: Integer read _GetDSP_F_ICOPCRD;
    {class} property DSP_F_ICORMC: Integer read _GetDSP_F_ICORMC;
    {class} property DSP_F_ICOSTANIM: Integer read _GetDSP_F_ICOSTANIM;
    {class} property DSP_F_LEFT: Integer read _GetDSP_F_LEFT;
    {class} property DSP_F_RIGHT: Integer read _GetDSP_F_RIGHT;
    {class} property DSP_F_SHOWIMAGE: Integer read _GetDSP_F_SHOWIMAGE;
    {class} property DSP_F_TXT2X16: Integer read _GetDSP_F_TXT2X16;
    {class} property DSP_F_TXTAPPINV: Integer read _GetDSP_F_TXTAPPINV;
    {class} property DSP_F_TXTBLKCARD: Integer read _GetDSP_F_TXTBLKCARD;
    {class} property DSP_F_TXTBLKPASS: Integer read _GetDSP_F_TXTBLKPASS;
    {class} property DSP_F_TXTINSPSC: Integer read _GetDSP_F_TXTINSPSC;
    {class} property DSP_F_TXTINSSC: Integer read _GetDSP_F_TXTINSSC;
    {class} property DSP_F_TXTINVPASS: Integer read _GetDSP_F_TXTINVPASS;
    {class} property DSP_F_TXTLTABLE: Integer read _GetDSP_F_TXTLTABLE;
    {class} property DSP_F_TXTNEXTBLK: Integer read _GetDSP_F_TXTNEXTBLK;
    {class} property DSP_F_TXTNMASK: Integer read _GetDSP_F_TXTNMASK;
    {class} property DSP_F_TXTOKPASS: Integer read _GetDSP_F_TXTOKPASS;
    {class} property DSP_F_TXTPROCESSING: Integer read _GetDSP_F_TXTPROCESSING;
    {class} property DSP_F_TXTREMOVCARD: Integer read _GetDSP_F_TXTREMOVCARD;
    {class} property DSP_F_TXTSEL: Integer read _GetDSP_F_TXTSEL;
    {class} property DSP_F_TXTSELECTED: Integer read _GetDSP_F_TXTSELECTED;
  end;

  [JavaSignature('br/com/gertec/ppcomp/IPPCompDSPCallbacks')]
  JIPPCompDSPCallbacks = interface(IJavaInstance)
    ['{0173755C-1515-47ED-82DF-A72714257DAC}']
    procedure Clear; cdecl;
    function MenuShow(P1: Int64; P2: JList; P3: Integer): Integer; cdecl;
    function MenuStart(P1: JString; P2: JAtomicLong): Integer; cdecl;
    procedure Text(P1: Int64; P2: JString; P3: JString); cdecl;
  end;
  TJIPPCompDSPCallbacks = class(TJavaGenericImport<JIPPCompDSPCallbacksClass, JIPPCompDSPCallbacks>) end;

  JPPCompBaseClass = interface(JObjectClass)
    ['{E1807B0B-2E54-4C57-B871-FC0E8CD63815}']
    {class} function init(P1: JContext): JPPCompBase; cdecl; overload;
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPCompBase')]
  JPPCompBase = interface(JObject)
    ['{7AC2A9F3-4B5A-46DE-85FD-9B5AE4F60676}']
    procedure PP_Abort; cdecl;
    procedure PP_ChangeParameter(P1: JString); cdecl;
    function PP_CheckEvent: JString; cdecl;
    function PP_ChipDirect: JString; cdecl;
    procedure PP_Close(P1: JString); cdecl;
    function PP_DefineWKPAN(P1: JString): JString; cdecl;
    procedure PP_Display(P1: JString); cdecl;
    procedure PP_DisplayEx(P1: JString); cdecl;
    function PP_EncryptBuffer(P1: JString): JString; cdecl;
    function PP_FinishChip(P1: JString; P2: JString): JString; cdecl;
    function PP_GenericCmd: JString; cdecl;
    function PP_GetCard: JString; cdecl;
    function PP_GetDUKPT(P1: JString): JString; cdecl;
    function PP_GetInfo(P1: JString): JString; cdecl;
    function PP_GetKey: Integer; cdecl;
    function PP_GetPIN: JString; cdecl;
    function PP_GetTimeStamp(P1: JString): JString; cdecl;
    function PP_GetVersion: JString; cdecl;
    function PP_GoOnChip: JString; cdecl;
    procedure PP_Open; cdecl; overload;
    procedure PP_Open(P1: JString); cdecl; overload;
    procedure PP_RemoveCard; cdecl;
    procedure PP_ResumeGetCard; cdecl;
    procedure PP_SelectLanguage(P1: JLANGUAGE); cdecl;
    function PP_SendCmd(P1: JString): JString; cdecl;
    procedure PP_SetDspCallbacks(P1: JIPPCompDSPCallbacks); cdecl;
    procedure PP_SetGPinTout(P1: Integer); cdecl;
    procedure PP_SetKbd(P1: JButton; P2: JButton; P3: JButton; P4: JButton; P5: JButton; P6: JButton; P7: JButton; P8: JButton; P9: JButton; P10: JButton; P11: JButton; P12: JButton; P13: JButton; P14: JActivity); cdecl;
    procedure PP_StartCheckEvent(P1: JString); cdecl;
    procedure PP_StartChipDirect(P1: JString); cdecl;
    procedure PP_StartGenericCmd(P1: JString); cdecl;
    procedure PP_StartGetCard(P1: JString); cdecl;
    procedure PP_StartGetKey; cdecl;
    procedure PP_StartGetPIN(P1: JString); cdecl;
    procedure PP_StartGoOnChip(P1: JString; P2: JString; P3: JString); cdecl;
    procedure PP_StartRemoveCard(P1: JString); cdecl;
    procedure PP_TableLoadEnd; cdecl;
    procedure PP_TableLoadInit(P1: JString); cdecl;
    procedure PP_TableLoadRec(P1: JString); cdecl;
  end;
  TJPPCompBase = class(TJavaGenericImport<JPPCompBaseClass, JPPCompBase>) end;

  JPPCompClass = interface(JPPCompBaseClass)
    ['{87AEF3A2-BCD8-4B4B-9B9E-57BC1383746D}']
    {class} function init(P1: JContext): JPPComp; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPComp')]
  JPPComp = interface(JPPCompBase)
    ['{7E8A7AFF-4F32-45C5-A575-DB9FBC8CB987}']
    procedure PP_Abort; cdecl;
    procedure PP_ChangeParameter(P1: JString); cdecl;
    function PP_CheckEvent: JString; cdecl;
    function PP_ChipDirect: JString; cdecl;
    procedure PP_Close(P1: JString); cdecl;
    function PP_DefineWKPAN(P1: JString): JString; cdecl;
    procedure PP_Display(P1: JString); cdecl;
    procedure PP_DisplayEx(P1: JString); cdecl;
    function PP_EncryptBuffer(P1: JString): JString; cdecl;
    function PP_FinishChip(P1: JString; P2: JString): JString; cdecl;
    function PP_GenericCmd: JString; cdecl;
    function PP_GetCard: JString; cdecl;
    function PP_GetDUKPT(P1: JString): JString; cdecl;
    function PP_GetInfo(P1: JString): JString; cdecl;
    function PP_GetKey: Integer; cdecl;
    function PP_GetPIN: JString; cdecl;
    function PP_GetTimeStamp(P1: JString): JString; cdecl;
    function PP_GetVersion: JString; cdecl;
    function PP_GoOnChip: JString; cdecl;
    procedure PP_Open; cdecl; overload;
    procedure PP_Open(P1: JString); cdecl; overload;
    procedure PP_RemoveCard; cdecl;
    procedure PP_ResumeGetCard; cdecl;
    procedure PP_SelectLanguage(P1: JLANGUAGE); cdecl;
    function PP_SendCmd(P1: JString): JString; cdecl;
    procedure PP_SetDspCallbacks(P1: JIPPCompDSPCallbacks); cdecl;
    procedure PP_SetGPinTout(P1: Integer); cdecl;
    procedure PP_SetKbd(P1: JButton; P2: JButton; P3: JButton; P4: JButton; P5: JButton; P6: JButton; P7: JButton; P8: JButton; P9: JButton; P10: JButton; P11: JButton; P12: JButton; P13: JButton; P14: JActivity); cdecl;
    procedure PP_StartCheckEvent(P1: JString); cdecl;
    procedure PP_StartChipDirect(P1: JString); cdecl;
    procedure PP_StartGenericCmd(P1: JString); cdecl;
    procedure PP_StartGetCard(P1: JString); cdecl;
    procedure PP_StartGetKey; cdecl;
    procedure PP_StartGetPIN(P1: JString); cdecl;
    procedure PP_StartGoOnChip(P1: JString; P2: JString; P3: JString); cdecl;
    procedure PP_StartRemoveCard(P1: JString); cdecl;
    procedure PP_TableLoadEnd; cdecl;
    procedure PP_TableLoadInit(P1: JString); cdecl;
    procedure PP_TableLoadRec(P1: JString); cdecl;
  end;
  TJPPComp = class(TJavaGenericImport<JPPCompClass, JPPComp>) end;

  JPPComp_1Class = interface(JThreadClass)
    ['{A6F9964E-398D-4461-9409-2DB3ADC50F7A}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPComp$1')]
  JPPComp_1 = interface(JThread)
    ['{2B03AA91-4D02-4997-A357-022658EB2EC5}']
    procedure run; cdecl;
  end;
  TJPPComp_1 = class(TJavaGenericImport<JPPComp_1Class, JPPComp_1>) end;

  JPPComp_2Class = interface(JThreadClass)
    ['{F00C23A2-2A55-4864-AD7F-F104B9449348}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPComp$2')]
  JPPComp_2 = interface(JThread)
    ['{B6EC1593-20D8-4C88-9067-38F557C4A557}']
    procedure run; cdecl;
  end;
  TJPPComp_2 = class(TJavaGenericImport<JPPComp_2Class, JPPComp_2>) end;

  JPPComp_3Class = interface(JThreadClass)
    ['{39E3462A-18C0-4540-99B4-00F260A2FC2F}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPComp$3')]
  JPPComp_3 = interface(JThread)
    ['{061E4C43-DFCE-42FC-8B1E-53C453D5AE03}']
    procedure run; cdecl;
  end;
  TJPPComp_3 = class(TJavaGenericImport<JPPComp_3Class, JPPComp_3>) end;

  JPPCompBase_1Class = interface(JThreadClass)
    ['{B16FD574-9B32-4D24-8C26-FD4EAE313279}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPCompBase$1')]
  JPPCompBase_1 = interface(JThread)
    ['{15E87779-AC4E-4862-AB9C-0F0CB63B1866}']
    procedure run; cdecl;
  end;
  TJPPCompBase_1 = class(TJavaGenericImport<JPPCompBase_1Class, JPPCompBase_1>) end;

  JPPCompBase_2Class = interface(JThreadClass)
    ['{7AA5ACB7-C32C-49C1-9521-98DC5B244025}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPCompBase$2')]
  JPPCompBase_2 = interface(JThread)
    ['{4A9174FF-6EBA-4441-8F21-AF16D45955D5}']
    procedure run; cdecl;
  end;
  TJPPCompBase_2 = class(TJavaGenericImport<JPPCompBase_2Class, JPPCompBase_2>) end;

  JPPCompBase_3Class = interface(JThreadClass)
    ['{C6E0772C-6C2B-406A-9567-9EC7AA118B8B}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPCompBase$3')]
  JPPCompBase_3 = interface(JThread)
    ['{CDDFF3BE-B174-4AED-8CFF-95BFF609BA11}']
    procedure run; cdecl;
  end;
  TJPPCompBase_3 = class(TJavaGenericImport<JPPCompBase_3Class, JPPCompBase_3>) end;

  JPPCompExceptionClass = interface(JExceptionClass)
    ['{B56C6C63-F8C9-43F6-AD3C-4D2C4CDF7D7A}']
    {class} function init(P1: Integer): JPPCompException; cdecl; overload;
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPCompException')]
  JPPCompException = interface(JException)
    ['{43B881A8-3B62-49CF-9158-D411E20FCAA2}']
    function getDescription: JString; cdecl;
    function getErrorCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJPPCompException = class(TJavaGenericImport<JPPCompExceptionClass, JPPCompException>) end;

  JPPCompNativeClass = interface(JObjectClass)
    ['{75B9C31E-77FE-4A7A-A3B6-05DD6F01CC8F}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/PPCompNative')]
  JPPCompNative = interface(JObject)
    ['{23C2E967-8EDF-467A-BFDB-FD07C3C52246}']
  end;
  TJPPCompNative = class(TJavaGenericImport<JPPCompNativeClass, JPPCompNative>) end;

  Jppcomp_aClass = interface(JObjectClass)
    ['{03EAB8A0-FA9E-41CC-B20E-826AFA5CDB8F}']
  end;

  [JavaSignature('br/com/gertec/ppcomp/a')]
  Jppcomp_a = interface(JObject)
    ['{488FEBF1-BB5B-4272-9B8B-A5674AE6493B}']
  end;
  TJppcomp_a = class(TJavaGenericImport<Jppcomp_aClass, Jppcomp_a>) end;

  JLANGUAGEClass = interface(JEnumClass)
    ['{351A333F-11E0-4D50-A113-B3AE2AF8DF90}']
    {class} function _GetEN: JLANGUAGE;
    {class} function _GetPT: JLANGUAGE;
    {class} function _GetSP: JLANGUAGE;
    {class} function valueOf(P1: JString): JLANGUAGE; cdecl;
    {class} function values: TJavaObjectArray<JLANGUAGE>; cdecl;
    {class} property EN: JLANGUAGE read _GetEN;
    {class} property PT: JLANGUAGE read _GetPT;
    {class} property SP: JLANGUAGE read _GetSP;
  end;

  [JavaSignature('br/com/gertec/ppcomp/enums/LANGUAGE')]
  JLANGUAGE = interface(JEnum)
    ['{015477AA-5BD9-44A2-9826-DA8EDE1D5B43}']
    function getValue: Integer; cdecl;
  end;
  TJLANGUAGE = class(TJavaGenericImport<JLANGUAGEClass, JLANGUAGE>) end;

  JResourceBundleClass = interface(JObjectClass)
    ['{B1D6BB64-D07D-478D-A48E-DA53A131FD89}']
    {class} function init: JResourceBundle; cdecl;
    {class} procedure clearCache; cdecl; overload;
    {class} procedure clearCache(loader: JClassLoader); cdecl; overload;
    {class} function getBundle(bundleName: JString): JResourceBundle; cdecl; overload;
    {class} function getBundle(bundleName: JString; locale: JLocale): JResourceBundle; cdecl; overload;
    {class} function getBundle(bundleName: JString; locale: JLocale; loader: JClassLoader): JResourceBundle; cdecl; overload;
    {class} function getBundle(baseName: JString; control: JResourceBundle_Control): JResourceBundle; cdecl; overload;
    {class} function getBundle(baseName: JString; targetLocale: JLocale; control: JResourceBundle_Control): JResourceBundle; cdecl; overload;
    {class} function getBundle(baseName: JString; targetLocale: JLocale; loader: JClassLoader; control: JResourceBundle_Control): JResourceBundle; cdecl; overload;
  end;

  [JavaSignature('java/util/ResourceBundle')]
  JResourceBundle = interface(JObject)
    ['{DFAD12CD-8075-4B24-8FCA-BE898A3C4943}']
    function containsKey(key: JString): Boolean; cdecl;
    function getKeys: JEnumeration; cdecl;
    function getLocale: JLocale; cdecl;
    function getObject(key: JString): JObject; cdecl;
    function getString(key: JString): JString; cdecl;
    function getStringArray(key: JString): TJavaObjectArray<JString>; cdecl;
    function keySet: JSet; cdecl;
  end;
  TJResourceBundle = class(TJavaGenericImport<JResourceBundleClass, JResourceBundle>) end;

  JListResourceBundleClass = interface(JResourceBundleClass)
    ['{87B3C2E0-112C-471D-95B1-2741B422EC18}']
    {class} function init: JListResourceBundle; cdecl;
  end;

  [JavaSignature('java/util/ListResourceBundle')]
  JListResourceBundle = interface(JResourceBundle)
    ['{650A6446-E451-4A34-A9A0-0586CA92C47E}']
    function getKeys: JEnumeration; cdecl;
    function handleGetObject(key: JString): JObject; cdecl;
  end;
  TJListResourceBundle = class(TJavaGenericImport<JListResourceBundleClass, JListResourceBundle>) end;

  JExceptionDescriptionClass = interface(JListResourceBundleClass)
    ['{FA493D5E-D55E-4765-87E8-2D99DF53D57F}']
    {class} function init: JExceptionDescription; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/ExceptionDescription')]
  JExceptionDescription = interface(JListResourceBundle)
    ['{44E02406-45BF-4806-B957-1967DA1913E4}']
  end;
  TJExceptionDescription = class(TJavaGenericImport<JExceptionDescriptionClass, JExceptionDescription>) end;

  JPPCompAlreadyOpenExceptionClass = interface(JPPCompExceptionClass)
    ['{8640F85D-8579-45F9-8D34-69B88F541A49}']
    {class} function init: JPPCompAlreadyOpenException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompAlreadyOpenException')]
  JPPCompAlreadyOpenException = interface(JPPCompException)
    ['{8AFDD358-522E-41F6-9364-4CBADC520456}']
  end;
  TJPPCompAlreadyOpenException = class(TJavaGenericImport<JPPCompAlreadyOpenExceptionClass, JPPCompAlreadyOpenException>) end;

  JPPCompCTLSSAppNautExceptionClass = interface(JPPCompExceptionClass)
    ['{DEC29BFB-D133-49A6-A5FF-85A1B97E94B1}']
    {class} function init: JPPCompCTLSSAppNautException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCTLSSAppNautException')]
  JPPCompCTLSSAppNautException = interface(JPPCompException)
    ['{4D69A5F2-E463-417D-99DC-A725E7859C4A}']
  end;
  TJPPCompCTLSSAppNautException = class(TJavaGenericImport<JPPCompCTLSSAppNautExceptionClass, JPPCompCTLSSAppNautException>) end;

  JPPCompCTLSSAppNavExceptionClass = interface(JPPCompExceptionClass)
    ['{1548A328-0C06-4817-AC92-894AE07D5699}']
    {class} function init: JPPCompCTLSSAppNavException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCTLSSAppNavException')]
  JPPCompCTLSSAppNavException = interface(JPPCompException)
    ['{BA370D2A-94B5-4168-B3D8-886ADCB6AF78}']
  end;
  TJPPCompCTLSSAppNavException = class(TJavaGenericImport<JPPCompCTLSSAppNavExceptionClass, JPPCompCTLSSAppNavException>) end;

  JPPCompCTLSSCommErrExceptionClass = interface(JPPCompExceptionClass)
    ['{32F78A9B-0DE7-4D6A-A24F-0E1A48A89216}']
    {class} function init: JPPCompCTLSSCommErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCTLSSCommErrException')]
  JPPCompCTLSSCommErrException = interface(JPPCompException)
    ['{CA56EB08-57E7-49AC-8EC2-84247604D925}']
  end;
  TJPPCompCTLSSCommErrException = class(TJavaGenericImport<JPPCompCTLSSCommErrExceptionClass, JPPCompCTLSSCommErrException>) end;

  JPPCompCTLSSInvalidatExceptionClass = interface(JPPCompExceptionClass)
    ['{02CAF51B-6D0E-4DAC-862A-99795C7CE618}']
    {class} function init: JPPCompCTLSSInvalidatException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCTLSSInvalidatException')]
  JPPCompCTLSSInvalidatException = interface(JPPCompException)
    ['{229B145E-2060-4DA7-AB0F-14BB07B0BCA6}']
  end;
  TJPPCompCTLSSInvalidatException = class(TJavaGenericImport<JPPCompCTLSSInvalidatExceptionClass, JPPCompCTLSSInvalidatException>) end;

  JPPCompCTLSSMultipleExceptionClass = interface(JPPCompExceptionClass)
    ['{B9B2FAC8-E716-4656-9A5E-A3090AFDBAB0}']
    {class} function init: JPPCompCTLSSMultipleException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCTLSSMultipleException')]
  JPPCompCTLSSMultipleException = interface(JPPCompException)
    ['{B01F7B18-2B0B-41EB-ABD0-0239D337A05D}']
  end;
  TJPPCompCTLSSMultipleException = class(TJavaGenericImport<JPPCompCTLSSMultipleExceptionClass, JPPCompCTLSSMultipleException>) end;

  JPPCompCTLSSProblemsExceptionClass = interface(JPPCompExceptionClass)
    ['{59937557-91DE-4F67-AED9-78665ED06D36}']
    {class} function init: JPPCompCTLSSProblemsException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCTLSSProblemsException')]
  JPPCompCTLSSProblemsException = interface(JPPCompException)
    ['{504D9365-A294-48E1-A101-FBDAA25B8FD1}']
  end;
  TJPPCompCTLSSProblemsException = class(TJavaGenericImport<JPPCompCTLSSProblemsExceptionClass, JPPCompCTLSSProblemsException>) end;

  JPPCompCancelExceptionClass = interface(JPPCompExceptionClass)
    ['{30EA641E-14ED-47EE-A7B0-EF8B96554310}']
    {class} function init: JPPCompCancelException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCancelException')]
  JPPCompCancelException = interface(JPPCompException)
    ['{D7DDD162-512F-48A7-93A7-7E452F539F33}']
  end;
  TJPPCompCancelException = class(TJavaGenericImport<JPPCompCancelExceptionClass, JPPCompCancelException>) end;

  JPPCompCardAppNautExceptionClass = interface(JPPCompExceptionClass)
    ['{F9B368C5-0A5D-4B05-9706-3F52E558926C}']
    {class} function init: JPPCompCardAppNautException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardAppNautException')]
  JPPCompCardAppNautException = interface(JPPCompException)
    ['{4C7F4288-369F-4FBE-9C87-FD75F84EF8B3}']
  end;
  TJPPCompCardAppNautException = class(TJavaGenericImport<JPPCompCardAppNautExceptionClass, JPPCompCardAppNautException>) end;

  JPPCompCardAppNavExceptionClass = interface(JPPCompExceptionClass)
    ['{2CEEDE37-EEF5-410F-8775-B174E783D184}']
    {class} function init: JPPCompCardAppNavException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardAppNavException')]
  JPPCompCardAppNavException = interface(JPPCompException)
    ['{0ECF9515-F685-4C18-B3A1-C463FEE73FAC}']
  end;
  TJPPCompCardAppNavException = class(TJavaGenericImport<JPPCompCardAppNavExceptionClass, JPPCompCardAppNavException>) end;

  JPPCompCardBlockedExceptionClass = interface(JPPCompExceptionClass)
    ['{7758BF1C-1519-43CD-ADC9-A3A6D1698687}']
    {class} function init: JPPCompCardBlockedException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardBlockedException')]
  JPPCompCardBlockedException = interface(JPPCompException)
    ['{95D65971-4166-4F2C-859B-CBEFC313AB5E}']
  end;
  TJPPCompCardBlockedException = class(TJavaGenericImport<JPPCompCardBlockedExceptionClass, JPPCompCardBlockedException>) end;

  JPPCompCardErrStructExceptionClass = interface(JPPCompExceptionClass)
    ['{D881E141-E532-4F04-847F-CB1F67E0174F}']
    {class} function init: JPPCompCardErrStructException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardErrStructException')]
  JPPCompCardErrStructException = interface(JPPCompException)
    ['{234E5B0B-4CDB-43B8-8F2D-6EFEE4DDA50A}']
  end;
  TJPPCompCardErrStructException = class(TJavaGenericImport<JPPCompCardErrStructExceptionClass, JPPCompCardErrStructException>) end;

  JPPCompCardExpiredExceptionClass = interface(JPPCompExceptionClass)
    ['{826D9970-62E1-40F7-940C-CF8A13679684}']
    {class} function init: JPPCompCardExpiredException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardExpiredException')]
  JPPCompCardExpiredException = interface(JPPCompException)
    ['{61A95D1A-C54C-42C4-82AA-9A57D94E4A9C}']
  end;
  TJPPCompCardExpiredException = class(TJavaGenericImport<JPPCompCardExpiredExceptionClass, JPPCompCardExpiredException>) end;

  JPPCompCardInvDataExceptionClass = interface(JPPCompExceptionClass)
    ['{CDE6AC82-1F63-4331-AEA9-AFB45EE4DBBE}']
    {class} function init: JPPCompCardInvDataException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardInvDataException')]
  JPPCompCardInvDataException = interface(JPPCompException)
    ['{B4BD01B2-F81F-40D8-BE18-4F6E75731025}']
  end;
  TJPPCompCardInvDataException = class(TJavaGenericImport<JPPCompCardInvDataExceptionClass, JPPCompCardInvDataException>) end;

  JPPCompCardInvExceptionClass = interface(JPPCompExceptionClass)
    ['{6CA33474-EFA4-46C0-BEF1-C86256E0CBAF}']
    {class} function init: JPPCompCardInvException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardInvException')]
  JPPCompCardInvException = interface(JPPCompException)
    ['{81D9A08E-F4AD-4A5E-A506-AA38F23477B0}']
  end;
  TJPPCompCardInvException = class(TJavaGenericImport<JPPCompCardInvExceptionClass, JPPCompCardInvException>) end;

  JPPCompCardInvalidatExceptionClass = interface(JPPCompExceptionClass)
    ['{9AA2E023-6FA6-4094-8D93-715FB3E99A42}']
    {class} function init: JPPCompCardInvalidatException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardInvalidatException')]
  JPPCompCardInvalidatException = interface(JPPCompException)
    ['{1282B98A-8FAE-4981-B2DA-73243CA0C3CA}']
  end;
  TJPPCompCardInvalidatException = class(TJavaGenericImport<JPPCompCardInvalidatExceptionClass, JPPCompCardInvalidatException>) end;

  JPPCompCardNAuthExceptionClass = interface(JPPCompExceptionClass)
    ['{7A45DDD9-D252-409F-9001-C766DC202927}']
    {class} function init: JPPCompCardNAuthException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardNAuthException')]
  JPPCompCardNAuthException = interface(JPPCompException)
    ['{C9A92CB9-891D-41F3-994A-695503602C92}']
  end;
  TJPPCompCardNAuthException = class(TJavaGenericImport<JPPCompCardNAuthExceptionClass, JPPCompCardNAuthException>) end;

  JPPCompCardNotEffectExceptionClass = interface(JPPCompExceptionClass)
    ['{933232B3-5617-4CFC-99A6-31B1322014B4}']
    {class} function init: JPPCompCardNotEffectException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardNotEffectException')]
  JPPCompCardNotEffectException = interface(JPPCompException)
    ['{C37BBAC6-03A7-4578-A24F-8243A27C1D38}']
  end;
  TJPPCompCardNotEffectException = class(TJavaGenericImport<JPPCompCardNotEffectExceptionClass, JPPCompCardNotEffectException>) end;

  JPPCompCardProblemsExceptionClass = interface(JPPCompExceptionClass)
    ['{37FB6E64-3D6E-4A50-BE07-7715A565E6BF}']
    {class} function init: JPPCompCardProblemsException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCardProblemsException')]
  JPPCompCardProblemsException = interface(JPPCompException)
    ['{1251D7A5-FFB7-430B-B4E5-F418F40E733A}']
  end;
  TJPPCompCardProblemsException = class(TJavaGenericImport<JPPCompCardProblemsExceptionClass, JPPCompCardProblemsException>) end;

  JPPCompCommErrExceptionClass = interface(JPPCompExceptionClass)
    ['{110C169C-5B73-420A-B010-44D487D2BD2F}']
    {class} function init: JPPCompCommErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCommErrException')]
  JPPCompCommErrException = interface(JPPCompException)
    ['{33C3315A-E005-4801-95BF-3B68A78054BB}']
  end;
  TJPPCompCommErrException = class(TJavaGenericImport<JPPCompCommErrExceptionClass, JPPCompCommErrException>) end;

  JPPCompCommtOutExceptionClass = interface(JPPCompExceptionClass)
    ['{8717CE75-0D50-4BF4-B721-1F5FEC633BB6}']
    {class} function init: JPPCompCommtOutException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompCommtOutException')]
  JPPCompCommtOutException = interface(JPPCompException)
    ['{206C6986-726D-4F03-898E-FECC3DAD72DF}']
  end;
  TJPPCompCommtOutException = class(TJavaGenericImport<JPPCompCommtOutExceptionClass, JPPCompCommtOutException>) end;

  JPPCompDataNotFoundExceptionClass = interface(JPPCompExceptionClass)
    ['{5FAFDE31-9CEE-493C-AC28-8B1140E55464}']
    {class} function init: JPPCompDataNotFoundException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompDataNotFoundException')]
  JPPCompDataNotFoundException = interface(JPPCompException)
    ['{519A58A9-0C72-4CB2-B723-101B9E3DC643}']
  end;
  TJPPCompDataNotFoundException = class(TJavaGenericImport<JPPCompDataNotFoundExceptionClass, JPPCompDataNotFoundException>) end;

  JPPCompDumbCardExceptionClass = interface(JPPCompExceptionClass)
    ['{D33301CB-4C08-470D-BA83-7AA89A36CA59}']
    {class} function init: JPPCompDumbCardException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompDumbCardException')]
  JPPCompDumbCardException = interface(JPPCompException)
    ['{AEE4726E-B5DE-4654-947D-3B1990A4DD7A}']
  end;
  TJPPCompDumbCardException = class(TJavaGenericImport<JPPCompDumbCardExceptionClass, JPPCompDumbCardException>) end;

  JPPCompErrCardExceptionClass = interface(JPPCompExceptionClass)
    ['{5D5964F9-4536-4EEE-8679-D0B329254D7F}']
    {class} function init: JPPCompErrCardException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompErrCardException')]
  JPPCompErrCardException = interface(JPPCompException)
    ['{9C76A7E0-5189-4FD1-8C45-C20CEC6F6A5B}']
  end;
  TJPPCompErrCardException = class(TJavaGenericImport<JPPCompErrCardExceptionClass, JPPCompErrCardException>) end;

  JPPCompErrExceptionClass = interface(JPPCompExceptionClass)
    ['{C1102753-3461-41CF-B786-2FE250BB651B}']
    {class} function init: JPPCompErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompErrException')]
  JPPCompErrException = interface(JPPCompException)
    ['{378CB599-2915-4C16-94D9-1CD9F3A8560A}']
  end;
  TJPPCompErrException = class(TJavaGenericImport<JPPCompErrExceptionClass, JPPCompErrException>) end;

  JPPCompErrFallbackExceptionClass = interface(JPPCompExceptionClass)
    ['{F9FCF745-E68C-425A-ACC9-EEF61CB60AFD}']
    {class} function init: JPPCompErrFallbackException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompErrFallbackException')]
  JPPCompErrFallbackException = interface(JPPCompException)
    ['{1797F1E8-73C3-4DFD-8B41-1EDEE9C81FA9}']
  end;
  TJPPCompErrFallbackException = class(TJavaGenericImport<JPPCompErrFallbackExceptionClass, JPPCompErrFallbackException>) end;

  JPPCompErrMandatExceptionClass = interface(JPPCompExceptionClass)
    ['{DF1F6DFC-DECE-4A18-B84E-659C7E78B114}']
    {class} function init: JPPCompErrMandatException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompErrMandatException')]
  JPPCompErrMandatException = interface(JPPCompException)
    ['{B5126A88-2356-4A0A-8F42-D0D45D501D73}']
  end;
  TJPPCompErrMandatException = class(TJavaGenericImport<JPPCompErrMandatExceptionClass, JPPCompErrMandatException>) end;

  JPPCompErrMaxAidExceptionClass = interface(JPPCompExceptionClass)
    ['{A388FAA1-194A-4C22-A438-0B54A12E68E8}']
    {class} function init: JPPCompErrMaxAidException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompErrMaxAidException')]
  JPPCompErrMaxAidException = interface(JPPCompException)
    ['{7FF7605C-7B8B-4860-BB72-6F6FC306060C}']
  end;
  TJPPCompErrMaxAidException = class(TJavaGenericImport<JPPCompErrMaxAidExceptionClass, JPPCompErrMaxAidException>) end;

  JPPCompErrPinExceptionClass = interface(JPPCompExceptionClass)
    ['{6CC881E1-E5C1-46BF-B6ED-493DB6F72B80}']
    {class} function init: JPPCompErrPinException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompErrPinException')]
  JPPCompErrPinException = interface(JPPCompException)
    ['{99B008A6-0ED5-438D-AFC9-E2504E30E613}']
  end;
  TJPPCompErrPinException = class(TJavaGenericImport<JPPCompErrPinExceptionClass, JPPCompErrPinException>) end;

  JPPCompErrPktSecExceptionClass = interface(JPPCompExceptionClass)
    ['{71908C51-44C1-40FE-8C53-12D23FC930EC}']
    {class} function init: JPPCompErrPktSecException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompErrPktSecException')]
  JPPCompErrPktSecException = interface(JPPCompException)
    ['{D55E9751-291D-4658-9ABD-6C00460ADE1E}']
  end;
  TJPPCompErrPktSecException = class(TJavaGenericImport<JPPCompErrPktSecExceptionClass, JPPCompErrPktSecException>) end;

  JPPCompExecErrorExceptionClass = interface(JPPCompExceptionClass)
    ['{4B62B7E7-0026-4B72-A226-F80D6998B172}']
    {class} function init: JPPCompExecErrorException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompExecErrorException')]
  JPPCompExecErrorException = interface(JPPCompException)
    ['{7849F827-40C9-499A-9BEB-A4012DF16338}']
  end;
  TJPPCompExecErrorException = class(TJavaGenericImport<JPPCompExecErrorExceptionClass, JPPCompExecErrorException>) end;

  JPPCompIntErrExceptionClass = interface(JPPCompExceptionClass)
    ['{128DA1BF-6DA9-4203-B9C9-C8D799C1ADDC}']
    {class} function init: JPPCompIntErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompIntErrException')]
  JPPCompIntErrException = interface(JPPCompException)
    ['{64E76871-241E-45DF-8DE2-66197FC870DA}']
  end;
  TJPPCompIntErrException = class(TJavaGenericImport<JPPCompIntErrExceptionClass, JPPCompIntErrException>) end;

  JPPCompInvAmountExceptionClass = interface(JPPCompExceptionClass)
    ['{2C301567-4131-4BE6-BA6E-B7BEA0304935}']
    {class} function init: JPPCompInvAmountException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompInvAmountException')]
  JPPCompInvAmountException = interface(JPPCompException)
    ['{47D0E9C3-5CF7-4561-A54E-7DFA93C06A47}']
  end;
  TJPPCompInvAmountException = class(TJavaGenericImport<JPPCompInvAmountExceptionClass, JPPCompInvAmountException>) end;

  JPPCompInvCallExceptionClass = interface(JPPCompExceptionClass)
    ['{FF229952-D461-4CB2-B8A7-4BCA2A051C97}']
    {class} function init: JPPCompInvCallException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompInvCallException')]
  JPPCompInvCallException = interface(JPPCompException)
    ['{B5BFF02B-03B4-4118-B61C-DDD2E1B0CEFC}']
  end;
  TJPPCompInvCallException = class(TJavaGenericImport<JPPCompInvCallExceptionClass, JPPCompInvCallException>) end;

  JPPCompInvModelExceptionClass = interface(JPPCompExceptionClass)
    ['{773E1D00-6EA3-4F08-AEC5-0C09C08EB505}']
    {class} function init: JPPCompInvModelException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompInvModelException')]
  JPPCompInvModelException = interface(JPPCompException)
    ['{8B83FD99-EA75-41BE-B083-FF004817A42D}']
  end;
  TJPPCompInvModelException = class(TJavaGenericImport<JPPCompInvModelExceptionClass, JPPCompInvModelException>) end;

  JPPCompInvParamExceptionClass = interface(JPPCompExceptionClass)
    ['{6E485C30-03B1-4901-9DCA-1A7D6272DA7E}']
    {class} function init: JPPCompInvParamException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompInvParamException')]
  JPPCompInvParamException = interface(JPPCompException)
    ['{B63F0A26-B62C-4210-9D22-F25E26A3EFAF}']
  end;
  TJPPCompInvParamException = class(TJavaGenericImport<JPPCompInvParamExceptionClass, JPPCompInvParamException>) end;

  JPPCompJNIExceptionClass = interface(JPPCompExceptionClass)
    ['{4002B83A-A083-44B6-94EB-6F4B9DF2E945}']
    {class} function init: JPPCompJNIException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompJNIException')]
  JPPCompJNIException = interface(JPPCompException)
    ['{C01D92FC-F0EC-4A52-A62E-268FBD968AE6}']
  end;
  TJPPCompJNIException = class(TJavaGenericImport<JPPCompJNIExceptionClass, JPPCompJNIException>) end;

  JPPCompLimitExcExceptionClass = interface(JPPCompExceptionClass)
    ['{9770E478-ABDF-4F21-AEA3-22754DAEDA03}']
    {class} function init: JPPCompLimitExcException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompLimitExcException')]
  JPPCompLimitExcException = interface(JPPCompException)
    ['{60A605BA-66DE-4FE4-919F-D2D58469674A}']
  end;
  TJPPCompLimitExcException = class(TJavaGenericImport<JPPCompLimitExcExceptionClass, JPPCompLimitExcException>) end;

  JPPCompMCDataErrExceptionClass = interface(JPPCompExceptionClass)
    ['{FC235320-2FBD-49DA-A0EE-D0474A7DF597}']
    {class} function init: JPPCompMCDataErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompMCDataErrException')]
  JPPCompMCDataErrException = interface(JPPCompException)
    ['{F2C008DC-F5FC-4BAD-9905-749EB2A46D1F}']
  end;
  TJPPCompMCDataErrException = class(TJavaGenericImport<JPPCompMCDataErrExceptionClass, JPPCompMCDataErrException>) end;

  JPPCompMFErrExceptionClass = interface(JPPCompExceptionClass)
    ['{D8281C23-B443-43D9-A908-85ECF0EAA60B}']
    {class} function init: JPPCompMFErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompMFErrException')]
  JPPCompMFErrException = interface(JPPCompException)
    ['{1AA6279E-F104-4D01-ABCC-274B8C8FDD97}']
  end;
  TJPPCompMFErrException = class(TJavaGenericImport<JPPCompMFErrExceptionClass, JPPCompMFErrException>) end;

  JPPCompMFErrFmtExceptionClass = interface(JPPCompExceptionClass)
    ['{27064DE0-EFC0-4FAB-A38B-AFD83E8D8E16}']
    {class} function init: JPPCompMFErrFmtException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompMFErrFmtException')]
  JPPCompMFErrFmtException = interface(JPPCompException)
    ['{5D2C1348-A367-44D9-87FC-75C7A99D5E0F}']
  end;
  TJPPCompMFErrFmtException = class(TJavaGenericImport<JPPCompMFErrFmtExceptionClass, JPPCompMFErrFmtException>) end;

  JPPCompMFNFoundExceptionClass = interface(JPPCompExceptionClass)
    ['{15B2BFB7-103F-4A09-81FD-41FFE209B6EA}']
    {class} function init: JPPCompMFNFoundException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompMFNFoundException')]
  JPPCompMFNFoundException = interface(JPPCompException)
    ['{5BEFE06D-3CBB-43B4-B918-675246149FF7}']
  end;
  TJPPCompMFNFoundException = class(TJavaGenericImport<JPPCompMFNFoundExceptionClass, JPPCompMFNFoundException>) end;

  JPPCompNoApplicExceptionClass = interface(JPPCompExceptionClass)
    ['{147B2283-5958-40B5-8C1F-BE6962A8017E}']
    {class} function init: JPPCompNoApplicException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNoApplicException')]
  JPPCompNoApplicException = interface(JPPCompException)
    ['{D5317F64-50E7-463D-999D-41AA56FDF12C}']
  end;
  TJPPCompNoApplicException = class(TJavaGenericImport<JPPCompNoApplicExceptionClass, JPPCompNoApplicException>) end;

  JPPCompNoBalanceExceptionClass = interface(JPPCompExceptionClass)
    ['{456DE7F2-1418-49AB-82BC-138353B69C81}']
    {class} function init: JPPCompNoBalanceException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNoBalanceException')]
  JPPCompNoBalanceException = interface(JPPCompException)
    ['{F24A7272-F759-49C1-B425-B1A086E179AB}']
  end;
  TJPPCompNoBalanceException = class(TJavaGenericImport<JPPCompNoBalanceExceptionClass, JPPCompNoBalanceException>) end;

  JPPCompNoCardExceptionClass = interface(JPPCompExceptionClass)
    ['{175A5917-8D6B-4C06-85AB-DB8D5E26952D}']
    {class} function init: JPPCompNoCardException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNoCardException')]
  JPPCompNoCardException = interface(JPPCompException)
    ['{07505DA2-8B18-4D14-A97A-5A57A31DCF6C}']
  end;
  TJPPCompNoCardException = class(TJavaGenericImport<JPPCompNoCardExceptionClass, JPPCompNoCardException>) end;

  JPPCompNoFuncExceptionClass = interface(JPPCompExceptionClass)
    ['{C8843B2E-90B6-4503-B784-250FFCDDA7E9}']
    {class} function init: JPPCompNoFuncException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNoFuncException')]
  JPPCompNoFuncException = interface(JPPCompException)
    ['{57FEC524-86E5-4279-8090-1DD04A1C4A83}']
  end;
  TJPPCompNoFuncException = class(TJavaGenericImport<JPPCompNoFuncExceptionClass, JPPCompNoFuncException>) end;

  JPPCompNoSamExceptionClass = interface(JPPCompExceptionClass)
    ['{FE9C2CFE-02CB-42A7-9E10-3173A8E9544D}']
    {class} function init: JPPCompNoSamException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNoSamException')]
  JPPCompNoSamException = interface(JPPCompException)
    ['{749382A0-B06F-435F-947F-C177A232605D}']
  end;
  TJPPCompNoSamException = class(TJavaGenericImport<JPPCompNoSamExceptionClass, JPPCompNoSamException>) end;

  JPPCompNoSecExceptionClass = interface(JPPCompExceptionClass)
    ['{2611D015-0DB1-4E1B-9AC0-20F9EB1B960A}']
    {class} function init: JPPCompNoSecException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNoSecException')]
  JPPCompNoSecException = interface(JPPCompException)
    ['{E400DE48-1E4A-43E3-939A-462B60CB0745}']
  end;
  TJPPCompNoSecException = class(TJavaGenericImport<JPPCompNoSecExceptionClass, JPPCompNoSecException>) end;

  JPPCompNotOpenExceptionClass = interface(JPPCompExceptionClass)
    ['{C9FA2EE0-84CB-4E93-B45D-DCF4D6B925BA}']
    {class} function init: JPPCompNotOpenException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNotOpenException')]
  JPPCompNotOpenException = interface(JPPCompException)
    ['{4B11F117-BF39-45FC-8C96-8EE19E22D04D}']
  end;
  TJPPCompNotOpenException = class(TJavaGenericImport<JPPCompNotOpenExceptionClass, JPPCompNotOpenException>) end;

  JPPCompNotifyExceptionClass = interface(JPPCompExceptionClass)
    ['{5AB95CBE-3111-491F-B203-242C3E1CE9C7}']
    {class} function init(P1: JString): JPPCompNotifyException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompNotifyException')]
  JPPCompNotifyException = interface(JPPCompException)
    ['{CE5A16BE-86E4-425E-B71E-5F4FA53F984F}']
    function getMsgNotify: JString; cdecl;
  end;
  TJPPCompNotifyException = class(TJavaGenericImport<JPPCompNotifyExceptionClass, JPPCompNotifyException>) end;

  JPPCompParameterNullPointerExceptionClass = interface(JPPCompExceptionClass)
    ['{65736A43-EE3A-4307-8723-A585CA0056C2}']
    {class} function init: JPPCompParameterNullPointerException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompParameterNullPointerException')]
  JPPCompParameterNullPointerException = interface(JPPCompException)
    ['{15F5BD2A-73CA-46E0-B329-AA1A0B60AF2A}']
  end;
  TJPPCompParameterNullPointerException = class(TJavaGenericImport<JPPCompParameterNullPointerExceptionClass, JPPCompParameterNullPointerException>) end;

  JPPCompPinBusyExceptionClass = interface(JPPCompExceptionClass)
    ['{F4BCC3C0-F2A8-4353-A65A-6DDE107780F7}']
    {class} function init: JPPCompPinBusyException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompPinBusyException')]
  JPPCompPinBusyException = interface(JPPCompException)
    ['{28D1FED6-EB21-4D4E-8927-89900AA21793}']
  end;
  TJPPCompPinBusyException = class(TJavaGenericImport<JPPCompPinBusyExceptionClass, JPPCompPinBusyException>) end;

  JPPCompPortErrExceptionClass = interface(JPPCompExceptionClass)
    ['{BF2A73FB-EDBE-44E9-81E2-FDC87C206EA8}']
    {class} function init: JPPCompPortErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompPortErrException')]
  JPPCompPortErrException = interface(JPPCompException)
    ['{E7BD4AF2-C0A5-4D02-BB81-821F0FB215EA}']
  end;
  TJPPCompPortErrException = class(TJavaGenericImport<JPPCompPortErrExceptionClass, JPPCompPortErrException>) end;

  JPPCompProcessingExceptionClass = interface(JPPCompExceptionClass)
    ['{114DE389-6FF0-48E1-9C47-0E12A4FFB9B7}']
    {class} function init: JPPCompProcessingException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompProcessingException')]
  JPPCompProcessingException = interface(JPPCompException)
    ['{A98A0E24-648F-4966-9A40-3E40E08F78D2}']
  end;
  TJPPCompProcessingException = class(TJavaGenericImport<JPPCompProcessingExceptionClass, JPPCompProcessingException>) end;

  JPPCompRspErrExceptionClass = interface(JPPCompExceptionClass)
    ['{1AC6EF6F-A6CB-4BC4-814D-8A032574646A}']
    {class} function init: JPPCompRspErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompRspErrException')]
  JPPCompRspErrException = interface(JPPCompException)
    ['{E8900837-BF46-446F-BD85-A086DA656982}']
  end;
  TJPPCompRspErrException = class(TJavaGenericImport<JPPCompRspErrExceptionClass, JPPCompRspErrException>) end;

  JPPCompRspOverflowExceptionClass = interface(JPPCompExceptionClass)
    ['{6A69697F-D28F-46D2-A048-0F139EC7987B}']
    {class} function init: JPPCompRspOverflowException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompRspOverflowException')]
  JPPCompRspOverflowException = interface(JPPCompException)
    ['{899EE85D-43A9-4352-BA48-C243D44DECF4}']
  end;
  TJPPCompRspOverflowException = class(TJavaGenericImport<JPPCompRspOverflowExceptionClass, JPPCompRspOverflowException>) end;

  JPPCompSamErrExceptionClass = interface(JPPCompExceptionClass)
    ['{3114315B-908B-427C-9CED-82D43C4E0089}']
    {class} function init: JPPCompSamErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompSamErrException')]
  JPPCompSamErrException = interface(JPPCompException)
    ['{67C7BB1C-C1C9-496D-80BE-1155EC5EA9ED}']
  end;
  TJPPCompSamErrException = class(TJavaGenericImport<JPPCompSamErrExceptionClass, JPPCompSamErrException>) end;

  JPPCompSamInvExceptionClass = interface(JPPCompExceptionClass)
    ['{4CF67DE3-3627-4757-8C01-7E4BF459A7AF}']
    {class} function init: JPPCompSamInvException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompSamInvException')]
  JPPCompSamInvException = interface(JPPCompException)
    ['{E0FBA1DC-C7B1-4508-B434-844709452CA9}']
  end;
  TJPPCompSamInvException = class(TJavaGenericImport<JPPCompSamInvExceptionClass, JPPCompSamInvException>) end;

  JPPCompTabErrExceptionClass = interface(JPPCompExceptionClass)
    ['{D8447648-B16B-4153-AFF2-D0ED1424581A}']
    {class} function init: JPPCompTabErrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompTabErrException')]
  JPPCompTabErrException = interface(JPPCompException)
    ['{B64F8D8A-1428-4316-95F4-512852757640}']
  end;
  TJPPCompTabErrException = class(TJavaGenericImport<JPPCompTabErrExceptionClass, JPPCompTabErrException>) end;

  JPPCompTabExpExceptionClass = interface(JPPCompExceptionClass)
    ['{0B13D478-468F-4E68-B8B6-A9643EDD0C50}']
    {class} function init: JPPCompTabExpException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompTabExpException')]
  JPPCompTabExpException = interface(JPPCompException)
    ['{1B93DA87-99C6-433B-BE84-F3E71C0DD499}']
  end;
  TJPPCompTabExpException = class(TJavaGenericImport<JPPCompTabExpExceptionClass, JPPCompTabExpException>) end;

  JPPCompTimeoutExceptionClass = interface(JPPCompExceptionClass)
    ['{A6AC9182-BEA5-4F60-9B53-A2321C57D5F1}']
    {class} function init: JPPCompTimeoutException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompTimeoutException')]
  JPPCompTimeoutException = interface(JPPCompException)
    ['{188F365E-8327-4892-A5CD-C347BB351444}']
  end;
  TJPPCompTimeoutException = class(TJavaGenericImport<JPPCompTimeoutExceptionClass, JPPCompTimeoutException>) end;

  JPPCompUnknownStatExceptionClass = interface(JPPCompExceptionClass)
    ['{88479A04-BB3E-40BA-AEA7-95EEB27C7731}']
    {class} function init: JPPCompUnknownStatException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompUnknownStatException')]
  JPPCompUnknownStatException = interface(JPPCompException)
    ['{8E2B94DB-2C2B-460E-85E7-63CF79B8884A}']
  end;
  TJPPCompUnknownStatException = class(TJavaGenericImport<JPPCompUnknownStatExceptionClass, JPPCompUnknownStatException>) end;

  JPPCompVCInvCurrExceptionClass = interface(JPPCompExceptionClass)
    ['{4FB9DAF0-8810-44D9-9F31-5F93D2FABBA5}']
    {class} function init: JPPCompVCInvCurrException; cdecl;
  end;

  [JavaSignature('br/com/gertec/ppcomp/exceptions/PPCompVCInvCurrException')]
  JPPCompVCInvCurrException = interface(JPPCompException)
    ['{23ABD238-D4FE-4232-B5AD-6B2EA049A291}']
  end;
  TJPPCompVCInvCurrException = class(TJavaGenericImport<JPPCompVCInvCurrExceptionClass, JPPCompVCInvCurrException>) end;

  JResourceBundle_ControlClass = interface(JObjectClass)
    ['{2ADC437D-D509-4502-8780-CA875000E885}']
    {class} function _GetFORMAT_CLASS: JList;
    {class} function _GetFORMAT_DEFAULT: JList;
    {class} function _GetFORMAT_PROPERTIES: JList;
    {class} function _GetTTL_DONT_CACHE: Int64;
    {class} function _GetTTL_NO_EXPIRATION_CONTROL: Int64;
    {class} function getControl(formats: JList): JResourceBundle_Control; cdecl;
    {class} function getNoFallbackControl(formats: JList): JResourceBundle_Control; cdecl;
    {class} property FORMAT_CLASS: JList read _GetFORMAT_CLASS;
    {class} property FORMAT_DEFAULT: JList read _GetFORMAT_DEFAULT;
    {class} property FORMAT_PROPERTIES: JList read _GetFORMAT_PROPERTIES;
    {class} property TTL_DONT_CACHE: Int64 read _GetTTL_DONT_CACHE;
    {class} property TTL_NO_EXPIRATION_CONTROL: Int64 read _GetTTL_NO_EXPIRATION_CONTROL;
  end;

  [JavaSignature('java/util/ResourceBundle$Control')]
  JResourceBundle_Control = interface(JObject)
    ['{C6F05057-07CA-4CF8-AA28-37F53C9B318B}']
    function getCandidateLocales(baseName: JString; locale: JLocale): JList; cdecl;
    function getFallbackLocale(baseName: JString; locale: JLocale): JLocale; cdecl;
    function getFormats(baseName: JString): JList; cdecl;
    function getTimeToLive(baseName: JString; locale: JLocale): Int64; cdecl;
    function needsReload(baseName: JString; locale: JLocale; format: JString; loader: JClassLoader; bundle: JResourceBundle; loadTime: Int64): Boolean; cdecl;
    function newBundle(baseName: JString; locale: JLocale; format: JString; loader: JClassLoader; reload: Boolean): JResourceBundle; cdecl;
    function toBundleName(baseName: JString; locale: JLocale): JString; cdecl;
    function toResourceName(bundleName: JString; suffix: JString): JString; cdecl;
  end;
  TJResourceBundle_Control = class(TJavaGenericImport<JResourceBundle_ControlClass, JResourceBundle_Control>) end;

  JAtomicLongClass = interface(JNumberClass)
    ['{4109A400-EA8D-4AC6-BA25-F4E3E24FEC76}']
    {class} function init(initialValue: Int64): JAtomicLong; cdecl; overload;
    {class} function init: JAtomicLong; cdecl; overload;
  end;

  [JavaSignature('java/util/concurrent/atomic/AtomicLong')]
  JAtomicLong = interface(JNumber)
    ['{31BCB0FB-CB36-421A-BF9C-754917092972}']
    function addAndGet(delta: Int64): Int64; cdecl;
    function compareAndSet(expect: Int64; update: Int64): Boolean; cdecl;
    function decrementAndGet: Int64; cdecl;
    function doubleValue: Double; cdecl;
    function floatValue: Single; cdecl;
    function &get: Int64; cdecl;
    function getAndAdd(delta: Int64): Int64; cdecl;
    function getAndDecrement: Int64; cdecl;
    function getAndIncrement: Int64; cdecl;
    function getAndSet(newValue: Int64): Int64; cdecl;
    function incrementAndGet: Int64; cdecl;
    function intValue: Integer; cdecl;
    procedure lazySet(newValue: Int64); cdecl;
    function longValue: Int64; cdecl;
    procedure &set(newValue: Int64); cdecl;
    function toString: JString; cdecl;
    function weakCompareAndSet(expect: Int64; update: Int64): Boolean; cdecl;
  end;
  TJAtomicLong = class(TJavaGenericImport<JAtomicLongClass, JAtomicLong>) end;

  Jlibemvbinder_BuildConfigClass = interface(JObjectClass)
    ['{DF9467A2-A61A-49A5-BF0C-FB687EA7649B}']
    {class} function _GetAPPLICATION_ID: JString;
    {class} function _GetBUILD_TYPE: JString;
    {class} function _GetDEBUG: Boolean;
    {class} function _GetFLAVOR: JString;
    {class} function _GetVERSION_CODE: Integer;
    {class} function _GetVERSION_NAME: JString;
    {class} function init: Jlibemvbinder_BuildConfig; cdecl;
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/BuildConfig')]
  Jlibemvbinder_BuildConfig = interface(JObject)
    ['{691529BB-E3F2-4AAD-A693-4B9A7F7B3F77}']
  end;
  TJlibemvbinder_BuildConfig = class(TJavaGenericImport<Jlibemvbinder_BuildConfigClass, Jlibemvbinder_BuildConfig>) end;

  JEmvBinderClass = interface(JObjectClass)
    ['{5DFCC23B-90AB-42DE-92A1-FD06B355C2BF}']
    {class} function _GetBINDER_CAPK: Integer;
    {class} function _GetBINDER_CAPK_REVOKE: Integer;
    {class} function _GetBINDER_CORE: Integer;
    {class} function _GetBINDER_EMV_APP_LIST: Integer;
    {class} function _GetBINDER_EMV_PARAM: Integer;
    {class} function _GetBINDER_EXCEPT_PAN: Integer;
    {class} function _GetBINDER_MC_PREPROCINTERINFO: Integer;
    {class} function _GetBINDER_MC_TERMCONFIG: Integer;
    {class} function _GetBINDER_NONE: Integer;
    {class} function init: JEmvBinder; cdecl;
    {class} property BINDER_CAPK: Integer read _GetBINDER_CAPK;
    {class} property BINDER_CAPK_REVOKE: Integer read _GetBINDER_CAPK_REVOKE;
    {class} property BINDER_CORE: Integer read _GetBINDER_CORE;
    {class} property BINDER_EMV_APP_LIST: Integer read _GetBINDER_EMV_APP_LIST;
    {class} property BINDER_EMV_PARAM: Integer read _GetBINDER_EMV_PARAM;
    {class} property BINDER_EXCEPT_PAN: Integer read _GetBINDER_EXCEPT_PAN;
    {class} property BINDER_MC_PREPROCINTERINFO: Integer read _GetBINDER_MC_PREPROCINTERINFO;
    {class} property BINDER_MC_TERMCONFIG: Integer read _GetBINDER_MC_TERMCONFIG;
    {class} property BINDER_NONE: Integer read _GetBINDER_NONE;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/EmvBinder')]
  JEmvBinder = interface(JObject)
    ['{180F0E7A-92FD-4A66-9C08-05D04050AB5C}']
  end;
  TJEmvBinder = class(TJavaGenericImport<JEmvBinderClass, JEmvBinder>) end;

  Jlibemvbinder_CAPKClass = interface(JEmvBinderClass)
    ['{1DC72750-910B-4DA2-BF66-244107988E35}']
    {class} function init(P1: JContext): Jlibemvbinder_CAPK; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/CAPK')]
  Jlibemvbinder_CAPK = interface(JEmvBinder)
    ['{68442B4E-3A46-4706-A3A2-3A18F47467CB}']
    function getArithInd: JString; cdecl;
    function getCheckSum: JString; cdecl;
    function getExpDate: JString; cdecl;
    function getExponent: JString; cdecl;
    function getExponentLen: Integer; cdecl;
    function getHashInd: JString; cdecl;
    function getKeyID: JString; cdecl;
    function getModul: JString; cdecl;
    function getModulLen: Integer; cdecl;
    function getRID: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setArithInd(P1: JString): Integer; cdecl;
    function setCheckSum(P1: JString): Integer; cdecl;
    function setExpDate(P1: JString): Integer; cdecl;
    function setExponent(P1: JString): Integer; cdecl;
    function setHashInd(P1: JString): Integer; cdecl;
    function setKeyID(P1: JString): Integer; cdecl;
    function setModul(P1: JString): Integer; cdecl;
    function setRID(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJlibemvbinder_CAPK = class(TJavaGenericImport<Jlibemvbinder_CAPKClass, Jlibemvbinder_CAPK>) end;

  JCAPKRevokeClass = interface(JEmvBinderClass)
    ['{35F80604-4B98-4BD3-A076-2353867201A0}']
    {class} function init(P1: JContext): JCAPKRevoke; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/CAPKRevoke')]
  JCAPKRevoke = interface(JEmvBinder)
    ['{1457F41A-B894-4BB4-AB24-4B67A082B6B3}']
    function getCAPKI: JString; cdecl;
    function getCERTSerial: JString; cdecl;
    function getRID: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setCAPKI(P1: JString): Integer; cdecl;
    function setCERTSerial(P1: JString): Integer; cdecl;
    function setRID(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJCAPKRevoke = class(TJavaGenericImport<JCAPKRevokeClass, JCAPKRevoke>) end;

  JEmvAppListClass = interface(JEmvBinderClass)
    ['{037B18DB-C1B3-4875-9884-E20F1C1741CC}']
    {class} function init(P1: JContext): JEmvAppList; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/EmvAppList')]
  JEmvAppList = interface(JEmvBinder)
    ['{1CAAF8E8-8940-47DA-8E99-B121DFA890D1}']
    function getAID: JString; cdecl;
    function getAIDLen: Integer; cdecl;
    function getAcquierId: JString; cdecl;
    function getAppName: JString; cdecl;
    function getBOnlinePin: Integer; cdecl;
    function getCLNotAllowFlag: JString; cdecl;
    function getCL_CVMLimit: Int64; cdecl;
    function getCL_FloorLimit: Int64; cdecl;
    function getCL_TransLimit: Int64; cdecl;
    function getCL_bAmount0Check: JString; cdecl;
    function getCL_bAmount0Option: JString; cdecl;
    function getCL_bCVMLimitCheck: JString; cdecl;
    function getCL_bFloorLimitCheck: JString; cdecl;
    function getCL_bStatusCheck: Integer; cdecl;
    function getCL_bTransLimitCheck: JString; cdecl;
    function getCountryCode: JString; cdecl;
    function getDDOL: JString; cdecl;
    function getEC_TermLimit: Int64; cdecl;
    function getEC_bTermLimitCheck: Integer; cdecl;
    function getExTermCapab: JString; cdecl;
    function getFloorLimit: Int64; cdecl;
    function getFloorLimitCheck: Integer; cdecl;
    function getMaxTargetPer: Integer; cdecl;
    function getMerchCateCode: JString; cdecl;
    function getMerchId: JString; cdecl;
    function getMerchName: JString; cdecl;
    function getPPassRdCVMLmtFlg: JString; cdecl;
    function getPPassRdClssFLmtFlg: JString; cdecl;
    function getPPassRdClssTxnLmtFlg: JString; cdecl;
    function getPPassRdClssTxnLmtNoONdeviceFlg: JString; cdecl;
    function getPPassRdClssTxnLmtONdeviceFlg: JString; cdecl;
    function getPPassTACDefault: JString; cdecl;
    function getPPassTACDenial: JString; cdecl;
    function getPPassTACOnline: JString; cdecl;
    function getPPassTermFLmtFlg: JString; cdecl;
    function getPriority: Integer; cdecl;
    function getRandTransSel: Integer; cdecl;
    function getRdClssTxnLmtNoONdevice: Int64; cdecl;
    function getRdClssTxnLmtONdevice: Int64; cdecl;
    function getReferCurrCode: JString; cdecl;
    function getReferCurrExp: JString; cdecl;
    function getRiskManData: JString; cdecl;
    function getSecurityCap: TJavaArray<Byte>; cdecl;
    function getSelFlag: JString; cdecl;
    function getTACDefault: JString; cdecl;
    function getTACDenial: JString; cdecl;
    function getTACOnline: JString; cdecl;
    function getTDOL: JString; cdecl;
    function getTargetPer: Integer; cdecl;
    function getTermCapab: Integer; cdecl;
    function getTermId: JString; cdecl;
    function getTermInfoEnableFlag: Integer; cdecl;
    function getTermQuali_byte2: Integer; cdecl;
    function getTermTransQuali: JString; cdecl;
    function getTerminalType: Integer; cdecl;
    function getThreshold: Int64; cdecl;
    function getTransCateCode: JString; cdecl;
    function getTransCurrCode: JString; cdecl;
    function getTransCurrExp: JString; cdecl;
    function getTransType: JString; cdecl;
    function getUDOL: TJavaArray<Byte>; cdecl;
    function getUDOLLen: TJavaArray<Byte>; cdecl;
    function getUcCVMCap: TJavaArray<Byte>; cdecl;
    function getUcCVMCapNoCVM: TJavaArray<Byte>; cdecl;
    function getUcCardDataInputCap: TJavaArray<Byte>; cdecl;
    function getUcKernelConfig: TJavaArray<Byte>; cdecl;
    function getUcMagStrCVMCapNoCVM: TJavaArray<Byte>; cdecl;
    function getUcMagStrCVMCapWithCVM: TJavaArray<Byte>; cdecl;
    function getUcMagSupportFlg: TJavaArray<Byte>; cdecl;
    function getVelocityCheck: Integer; cdecl;
    function getVersion: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function parseMCByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setAID(P1: JString): Integer; cdecl;
    procedure setAcquierId(P1: JString); cdecl;
    procedure setAppName(P1: JString); cdecl;
    procedure setBOnlinePin(P1: Integer); cdecl;
    procedure setCLNotAllowFlag(P1: JString); cdecl;
    procedure setCL_CVMLimit(P1: Int64); cdecl;
    procedure setCL_FloorLimit(P1: Int64); cdecl;
    procedure setCL_TransLimit(P1: Int64); cdecl;
    procedure setCL_bAmount0Check(P1: JString); cdecl;
    procedure setCL_bAmount0Option(P1: JString); cdecl;
    procedure setCL_bCVMLimitCheck(P1: JString); cdecl;
    procedure setCL_bFloorLimitCheck(P1: JString); cdecl;
    function setCL_bStatusCheck(P1: Integer): Integer; cdecl;
    procedure setCL_bTransLimitCheck(P1: JString); cdecl;
    function setCountryCode(P1: JString): Integer; cdecl;
    procedure setDDOL(P1: JString); cdecl;
    procedure setEC_TermLimit(P1: Int64); cdecl;
    procedure setEC_bTermLimitCheck(P1: Integer); cdecl;
    function setExTermCapab(P1: JString): Integer; cdecl;
    procedure setFloorLimit(P1: Int64); cdecl;
    procedure setFloorLimitCheck(P1: Integer); cdecl;
    procedure setMagAvn(P1: TJavaArray<Byte>); cdecl;
    function setMaxTargetPer(P1: Integer): Integer; cdecl;
    procedure setMerchCateCode(P1: JString); cdecl;
    procedure setMerchId(P1: JString); cdecl;
    procedure setMerchName(P1: JString); cdecl;
    procedure setPPassRdCVMLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssFLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtNoONdeviceFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtONdeviceFlg(P1: JString); cdecl;
    procedure setPPassTACDefault(P1: JString); cdecl;
    procedure setPPassTACDenial(P1: JString); cdecl;
    procedure setPPassTACOnline(P1: JString); cdecl;
    procedure setPPassTermFLmtFlg(P1: JString); cdecl;
    procedure setPriority(P1: Integer); cdecl;
    function setRandTransSel(P1: Integer): Integer; cdecl;
    procedure setRdClssTxnLmtNoONdevice(P1: Int64); cdecl;
    procedure setRdClssTxnLmtONdevice(P1: Int64); cdecl;
    procedure setReferCurrCode(P1: JString); cdecl;
    procedure setReferCurrExp(P1: JString); cdecl;
    procedure setRiskManData(P1: JString); cdecl;
    procedure setSecurityCap(P1: TJavaArray<Byte>); cdecl;
    procedure setSelFlag(P1: JString); cdecl;
    procedure setTACDefault(P1: JString); cdecl;
    procedure setTACDenial(P1: JString); cdecl;
    procedure setTACOnline(P1: JString); cdecl;
    procedure setTDOL(P1: JString); cdecl;
    function setTargetPer(P1: Integer): Integer; cdecl;
    function setTermCapab(P1: Integer): Integer; cdecl;
    procedure setTermId(P1: JString); cdecl;
    function setTermInfoEnableFlag(P1: Integer): Integer; cdecl;
    procedure setTermQuali_byte2(P1: Integer); cdecl;
    function setTermTransQuali(P1: JString): Integer; cdecl;
    function setTerminalType(P1: Integer): Integer; cdecl;
    procedure setThreshold(P1: Int64); cdecl;
    function setTransCateCode(P1: JString): Integer; cdecl;
    procedure setTransCurrCode(P1: JString); cdecl;
    procedure setTransCurrExp(P1: JString); cdecl;
    procedure setTransType(P1: JString); cdecl;
    procedure setUDOL(P1: TJavaArray<Byte>); cdecl;
    procedure setUDOLLen(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCVMCap(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCVMCapNoCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCardDataInputCap(P1: TJavaArray<Byte>); cdecl;
    procedure setUcKernelConfig(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagStrCVMCapNoCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagStrCVMCapWithCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagSupportFlg(P1: TJavaArray<Byte>); cdecl;
    function setVelocityCheck(P1: Integer): Integer; cdecl;
    function setVersion(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
    function toMCByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJEmvAppList = class(TJavaGenericImport<JEmvAppListClass, JEmvAppList>) end;

  JEmvBinder_1Class = interface(JObjectClass)
    ['{971F6C95-A367-4689-AD54-4B379E313CDD}']
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/EmvBinder$1')]
  JEmvBinder_1 = interface(JObject)
    ['{6AA6DAAC-6C18-47E9-898B-E1123F2D06A6}']
    procedure onServiceConnected(P1: JComponentName; P2: JIBinder); cdecl;
    procedure onServiceDisconnected(P1: JComponentName); cdecl;
  end;
  TJEmvBinder_1 = class(TJavaGenericImport<JEmvBinder_1Class, JEmvBinder_1>) end;

  JEmvBinder_2Class = interface(JObjectClass)
    ['{62E48033-B028-4226-8D81-9D31A15EE3C3}']
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/EmvBinder$2')]
  JEmvBinder_2 = interface(JObject)
    ['{C0DC4F1D-5D67-4DF4-A686-71F966A16CDA}']
    procedure binderDied; cdecl;
  end;
  TJEmvBinder_2 = class(TJavaGenericImport<JEmvBinder_2Class, JEmvBinder_2>) end;

  JEmvCoreClass = interface(JEmvBinderClass)
    ['{CB61C175-780F-4CA1-8BFD-35BB02056894}']
    {class} function init(P1: JContext): JEmvCore; cdecl; overload;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/EmvCore')]
  JEmvCore = interface(JEmvBinder)
    ['{B27142C5-7A31-4566-9D97-70DEE935A455}']
    function AppSelForLog(P1: Integer; P2: JICallbackListener): Integer; cdecl;
    function CleanTornLog_MC(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>): Integer; cdecl;
    procedure DeleteAllTornRecord; cdecl;
    function EmvLib_GetPrintStatus(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function KernalInit: Integer; cdecl;
    function L1_CarrierOnOFF(P1: Integer): Integer; cdecl;
    function L1_PICC_Digital: Integer; cdecl;
    function L1_PICC_TypeALoop: Integer; cdecl;
    function L1_PICC_TypeBLoop: Integer; cdecl;
    function addAID(P1: TJavaArray<Byte>): Integer; cdecl;
    function addAID_MC(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    function addCAPK(P1: TJavaArray<Byte>): Integer; cdecl;
    function addExceptPAN(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    function addIPKRevoke(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>): Integer; cdecl;
    function addPID(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function appSel(P1: Integer; P2: Integer; P3: JICallbackListener): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    function delAllAID: Integer; cdecl;
    function delAllCAPK: Integer; cdecl;
    function delAllPID: Integer; cdecl;
    function delExceptPANAll: Integer; cdecl;
    function delIPKRevokeAll: Integer; cdecl;
    function getAID(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getBalance(P1: TJavaArray<Byte>): Integer; cdecl;
    function getCAPK(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getCoreTLVMessage(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getExceptPAN(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getIPKRevoke(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getLogItem(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getMagTrackData_MC(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getOutCome(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getPID(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    procedure getParam(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>); cdecl;
    function getPath: Integer; cdecl;
    function getScriptResult(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getSelectedAID(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getTLV(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getTornRecordTLV(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function importDetData(P1: TJavaArray<Byte>; P2: Integer; P3: Boolean): Integer; cdecl;
    function init: Integer; cdecl; overload;
    function loadData_MC(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function nGenTrack1Data_MC_Mag(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    function nGenTrack2Data_MC_Mag(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    function payWaveHandle(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>; P4: Integer): Integer; cdecl;
    function preProcessForContactless(P1: JICallbackListener): Integer; cdecl;
    function procContactTrans(P1: JICallbackListener): Integer; cdecl;
    function procContactlessTrans(P1: JICallbackListener): Integer; cdecl;
    function procQPBOCTrans(P1: JICallbackListener): Integer; cdecl;
    function procTrans(P1: JICallbackListener): Integer; cdecl;
    function qPBOCPreProcess(P1: JICallbackListener): Integer; cdecl;
    function readAppData(P1: JICallbackListener): Integer; cdecl;
    function readLogRecord(P1: Integer): Integer; cdecl;
    function serailDebugPort(P1: Integer; P2: Integer): Integer; cdecl;
    function setDetConFlag_MC(P1: Integer): Integer; cdecl;
    function setOnDekReciceListener(P1: JICallbackListener): Integer; cdecl;
    procedure setParam(P1: TJavaArray<Byte>); cdecl;
    function setParam_MC(P1: Byte; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    function setTLV(P1: Integer; P2: TJavaArray<Byte>): Integer; cdecl;
    function setTermConfig(P1: TJavaArray<Byte>): Integer; cdecl;
    procedure transInit; cdecl;
  end;
  TJEmvCore = class(TJavaGenericImport<JEmvCoreClass, JEmvCore>) end;

  JEmvParamClass = interface(JEmvBinderClass)
    ['{ED6544B1-61AA-47FD-ADD0-73458FF5E364}']
    {class} function init(P1: JContext): JEmvParam; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/EmvParam')]
  JEmvParam = interface(JEmvBinder)
    ['{3293D62F-9C14-4FE4-87D3-FA8387F55650}']
    function getCL_bCashAUCCheck: JString; cdecl;
    function getCL_bCashBackAUCCheck: JString; cdecl;
    function getCL_bExceptionFileCheck: JString; cdecl;
    function getCountryCode: JString; cdecl;
    function getDRLSupportFlag: JString; cdecl;
    function getECTSI: Integer; cdecl;
    function getExTermCapab: JString; cdecl;
    function getFixedCashBackAmount: Int64; cdecl;
    function getFixedPasswd: JString; cdecl;
    function getFixedTransAmount: Int64; cdecl;
    function getForceOnline: Integer; cdecl;
    function getGetDataPIN: Integer; cdecl;
    function getMerchCateCode: JString; cdecl;
    function getMerchId: JString; cdecl;
    function getMerchName: JString; cdecl;
    function getReferCurrCode: JString; cdecl;
    function getReferCurrCon: Integer; cdecl;
    function getReferCurrExp: JString; cdecl;
    function getSupportDefaultDDOL: Integer; cdecl;
    function getSupportDefaultTDOL: Integer; cdecl;
    function getSupportPSESel: Integer; cdecl;
    function getTermCapab: Integer; cdecl;
    function getTermId: JString; cdecl;
    function getTermTransQuali: JString; cdecl;
    function getTerminalType: Integer; cdecl;
    function getTransCurrCode: JString; cdecl;
    function getTransCurrExp: JString; cdecl;
    function getTransType: Int64; cdecl;
    function getUcDataCaptureFlag: Integer; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    procedure setCL_bCashAUCCheck(P1: JString); cdecl;
    procedure setCL_bCashBackAUCCheck(P1: JString); cdecl;
    procedure setCL_bExceptionFileCheck(P1: JString); cdecl;
    function setCountryCode(P1: JString): Integer; cdecl;
    procedure setDRLSupportFlag(P1: JString); cdecl;
    function setECTSI(P1: Integer): Integer; cdecl;
    function setExTermCapab(P1: JString): Integer; cdecl;
    function setFixedCashBackAmount(P1: Int64): Integer; cdecl;
    function setFixedPasswd(P1: JString): Integer; cdecl;
    function setFixedTransAmount(P1: Int64): Integer; cdecl;
    function setForceOnline(P1: Integer): Integer; cdecl;
    function setGetDataPIN(P1: Integer): Integer; cdecl;
    function setMerchCateCode(P1: JString): Integer; cdecl;
    function setMerchId(P1: JString): Integer; cdecl;
    function setMerchName(P1: JString): Integer; cdecl;
    function setReferCurrCode(P1: JString): Integer; cdecl;
    function setReferCurrCon(P1: Integer): Integer; cdecl;
    function setReferCurrExp(P1: JString): Integer; cdecl;
    function setSupportDefaultDDOL(P1: Integer): Integer; cdecl;
    function setSupportDefaultTDOL(P1: Integer): Integer; cdecl;
    function setSupportPSESel(P1: Integer): Integer; cdecl;
    function setTermCapab(P1: Integer): Integer; cdecl;
    function setTermId(P1: JString): Integer; cdecl;
    function setTermTransQuali(P1: JString): Integer; cdecl;
    function setTerminalType(P1: Integer): Integer; cdecl;
    function setTransCurrCode(P1: JString): Integer; cdecl;
    function setTransCurrExp(P1: JString): Integer; cdecl;
    function setTransType(P1: Int64): Integer; cdecl;
    function setUcDataCaptureFlag(P1: Integer): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJEmvParam = class(TJavaGenericImport<JEmvParamClass, JEmvParam>) end;

  JExceptPANClass = interface(JEmvBinderClass)
    ['{C09C3268-29CE-46F1-9904-8533E5E0A166}']
    {class} function init(P1: JContext): JExceptPAN; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/ExceptPAN')]
  JExceptPAN = interface(JEmvBinder)
    ['{509081D0-48E4-4D54-A859-753D8A2535E4}']
    function getPANASCII: JString; cdecl;
    function getPANASCIILen: Integer; cdecl;
    function getPANSeq: JString; cdecl;
    function getValidFlag: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setPANASCII(P1: JString): Integer; cdecl;
    function setPANASCIILen(P1: Integer): Integer; cdecl;
    function setPANSeq(P1: JString): Integer; cdecl;
    function setValidFlag(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJExceptPAN = class(TJavaGenericImport<JExceptPANClass, JExceptPAN>) end;

  JExceptPAN_1Class = interface(JObjectClass)
    ['{111E38E2-05EE-4A91-A801-4455FC3F138A}']
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/ExceptPAN$1')]
  JExceptPAN_1 = interface(JObject)
    ['{B9212FFA-A4D1-4F81-962E-E4166AD66CBD}']
    procedure run; cdecl;
  end;
  TJExceptPAN_1 = class(TJavaGenericImport<JExceptPAN_1Class, JExceptPAN_1>) end;

  JPIDClass = interface(JObjectClass)
    ['{548CCB41-1D38-475B-BFDE-45CBF6529890}']
    {class} function init: JPID; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/PID')]
  JPID = interface(JObject)
    ['{52BFB4D9-2CB5-42B7-99B6-BAC677D2903A}']
    function getmAmtZeroCheckFlag: JString; cdecl;
    function getmAmtZeroCheckOption: JString; cdecl;
    function getmCLNotAllowFlag: JString; cdecl;
    function getmCVMlimitCheckFlag: JString; cdecl;
    function getmEnableFlag: JString; cdecl;
    function getmFloorLimitCheckFlag: JString; cdecl;
    function getmPaywaveCVMLimit: JString; cdecl;
    function getmPaywaveFloorLimit: JString; cdecl;
    function getmPaywaveTransLimit: JString; cdecl;
    function getmProID: JString; cdecl;
    function getmProIDLen: JString; cdecl;
    function getmRCTLCheckFlag: JString; cdecl;
    function getmStatusCheckFlag: JString; cdecl;
    function getmTermQuali_byte2: JString; cdecl;
    procedure init; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    procedure setmAmtZeroCheckFlag(P1: JString); cdecl;
    procedure setmAmtZeroCheckOption(P1: JString); cdecl;
    procedure setmCLNotAllowFlag(P1: JString); cdecl;
    procedure setmCVMlimitCheckFlag(P1: JString); cdecl;
    procedure setmEnableFlag(P1: JString); cdecl;
    procedure setmFloorLimitCheckFlag(P1: JString); cdecl;
    procedure setmPaywaveCVMLimit(P1: JString); cdecl;
    procedure setmPaywaveFloorLimit(P1: JString); cdecl;
    procedure setmPaywaveTransLimit(P1: JString); cdecl;
    procedure setmProID(P1: JString); cdecl;
    procedure setmProIDLen(P1: JString); cdecl;
    procedure setmRCTLCheckFlag(P1: JString); cdecl;
    procedure setmStatusCheckFlag(P1: JString); cdecl;
    procedure setmTermQuali_byte2(P1: JString); cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJPID = class(TJavaGenericImport<JPIDClass, JPID>) end;

  JPayPassPreProcInterInfoClass = interface(JEmvBinderClass)
    ['{7C2F7B16-59D6-45BD-8BF0-5E05D11C0AD9}']
    {class} function init(P1: JContext): JPayPassPreProcInterInfo; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/PayPassPreProcInterInfo')]
  JPayPassPreProcInterInfo = interface(JEmvBinder)
    ['{2E5F583D-E143-4C59-A8BC-6E0D10A3AA75}']
    function getAucAID: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucReaderTTQ: TJavaArray<Byte>; cdecl;
    function getAucTermFLmt: TJavaArray<Byte>; cdecl;
    function getUcAidLen: TJavaArray<Byte>; cdecl;
    function getUcCLAppNotAllowed: TJavaArray<Byte>; cdecl;
    function getUcRdCLFLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcRdCLTxnLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcRdCVMLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcStatusCheckFlg: TJavaArray<Byte>; cdecl;
    function getUcTermFLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcTermFLmtFlg: TJavaArray<Byte>; cdecl;
    function getUcZeroAmtFlg: TJavaArray<Byte>; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setAucAID(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucRFU(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucReaderTTQ(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucTermFLmt(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcAidLen(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcCLAppNotAllowed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCLFLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCLTxnLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCVMLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcStatusCheckFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcTermFLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcTermFLmtFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcZeroAmtFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJPayPassPreProcInterInfo = class(TJavaGenericImport<JPayPassPreProcInterInfoClass, JPayPassPreProcInterInfo>) end;

  Jlibemvbinder_PayPassTermConfigClass = interface(JEmvBinderClass)
    ['{2F5D6862-CD1B-48CF-B56F-AE88AA30E338}']
    {class} function init(P1: JContext): Jlibemvbinder_PayPassTermConfig; cdecl;
  end;

  [JavaSignature('sdk4/wangpos/libemvbinder/PayPassTermConfig')]
  Jlibemvbinder_PayPassTermConfig = interface(JEmvBinder)
    ['{58E7C2BC-3F3E-4271-BCFD-32EDD81AF515}']
    function getAucBalanceAfterGAC: JString; cdecl;
    function getAucBalanceBeforeGAC: JString; cdecl;
    function getAucInterDevSerNum: JString; cdecl;
    function getAucMaxLifeTimeTorn: JString; cdecl;
    function getAucMsgHoldTime: JString; cdecl;
    function getMaximumRelayRGP: JString; cdecl;
    function getMaximumRelayRGPFlg: JString; cdecl;
    function getMinimumRRGP: JString; cdecl;
    function getMinimumRRGPFlg: JString; cdecl;
    function getRelayRAT: JString; cdecl;
    function getRelayRATFlg: JString; cdecl;
    function getRelayRTTMT: JString; cdecl;
    function getRelayRTTMTFlg: JString; cdecl;
    function getTerminalETTFRRCAPDU: JString; cdecl;
    function getTerminalETTFRRCAPDUFlg: JString; cdecl;
    function getTerminalETTFRRRAPDU: JString; cdecl;
    function getTerminalETTFRRRAPDUFlg: JString; cdecl;
    function getUcBalanceAfterGACFlg: JString; cdecl;
    function getUcBalanceBeforeGACFlg: JString; cdecl;
    function getUcHoldTimeValue: JString; cdecl;
    function getUcHoldTimeValueFlg: JString; cdecl;
    function getUcInterDevSerNumFlg: JString; cdecl;
    function getUcKernelID: JString; cdecl;
    function getUcKernelIDFlg: JString; cdecl;
    function getUcMaxLifeTimeTornFlg: JString; cdecl;
    function getUcMaxNumberTorn: JString; cdecl;
    function getUcMaxNumberTornFlg: JString; cdecl;
    function getUcMobileSup: JString; cdecl;
    function getUcMobileSupFlg: JString; cdecl;
    function getUcMsgHoldTimeFlg: JString; cdecl;
    function parseMCByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    procedure setAucBalanceAfterGAC(P1: JString); cdecl;
    procedure setAucBalanceBeforeGAC(P1: JString); cdecl;
    procedure setAucInterDevSerNum(P1: JString); cdecl;
    procedure setAucMaxLifeTimeTorn(P1: JString); cdecl;
    procedure setAucMsgHoldTime(P1: JString); cdecl;
    procedure setMaximumRelayRGP(P1: JString); cdecl;
    procedure setMaximumRelayRGPFlg(P1: JString); cdecl;
    procedure setMinimumRRGP(P1: JString); cdecl;
    procedure setMinimumRRGPFlg(P1: JString); cdecl;
    procedure setRelayRAT(P1: JString); cdecl;
    procedure setRelayRATFlg(P1: JString); cdecl;
    procedure setRelayRTTMT(P1: JString); cdecl;
    procedure setRelayRTTMTFlg(P1: JString); cdecl;
    procedure setTerminalETTFRRCAPDU(P1: JString); cdecl;
    procedure setTerminalETTFRRCAPDUFlg(P1: JString); cdecl;
    procedure setTerminalETTFRRRAPDU(P1: JString); cdecl;
    procedure setTerminalETTFRRRAPDUFlg(P1: JString); cdecl;
    procedure setUcBalanceAfterGACFlg(P1: JString); cdecl;
    procedure setUcBalanceBeforeGACFlg(P1: JString); cdecl;
    procedure setUcHoldTimeValue(P1: JString); cdecl;
    procedure setUcHoldTimeValueFlg(P1: JString); cdecl;
    procedure setUcInterDevSerNumFlg(P1: JString); cdecl;
    procedure setUcKernelID(P1: JString); cdecl;
    procedure setUcKernelIDFlg(P1: JString); cdecl;
    procedure setUcMaxLifeTimeTornFlg(P1: JString); cdecl;
    procedure setUcMaxNumberTorn(P1: JString); cdecl;
    procedure setUcMaxNumberTornFlg(P1: JString); cdecl;
    procedure setUcMobileSup(P1: JString); cdecl;
    procedure setUcMobileSupFlg(P1: JString); cdecl;
    procedure setUcMsgHoldTimeFlg(P1: JString); cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJlibemvbinder_PayPassTermConfig = class(TJavaGenericImport<Jlibemvbinder_PayPassTermConfigClass, Jlibemvbinder_PayPassTermConfig>) end;

  JIBinderPoolClass = interface(JIInterfaceClass)
    ['{BF696918-11F9-4AD2-BB3A-0815CE5F1475}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IBinderPool')]
  JIBinderPool = interface(JIInterface)
    ['{B22B2B97-5D78-4AC5-8C61-2EF2F9B41375}']
    function queryBinder(P1: Integer): JIBinder; cdecl;
  end;
  TJIBinderPool = class(TJavaGenericImport<JIBinderPoolClass, JIBinderPool>) end;

  JIBinderPool_StubClass = interface(JBinderClass)
    ['{5477DFD6-4DB7-469F-9682-EAA12FD377A8}']
    {class} function asInterface(P1: JIBinder): JIBinderPool; cdecl;
    {class} function init: JIBinderPool_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/IBinderPool$Stub')]
  JIBinderPool_Stub = interface(JBinder)
    ['{9BB1ACD5-979D-430F-B3AB-53E525A3011E}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIBinderPool_Stub = class(TJavaGenericImport<JIBinderPool_StubClass, JIBinderPool_Stub>) end;

  JStub_aClass = interface(JObjectClass)
    ['{0CB0DB60-0AE3-4B9A-BF22-24B781B05E6C}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IBinderPool$Stub$a')]
  JStub_a = interface(JObject)
    ['{BE3110BE-FA3B-4F4A-B0CF-A9E0DA39F2A8}']
    function asBinder: JIBinder; cdecl;
    function queryBinder(P1: Integer): JIBinder; cdecl;
  end;
  TJStub_a = class(TJavaGenericImport<JStub_aClass, JStub_a>) end;

  JICAPKInterfaceClass = interface(JIInterfaceClass)
    ['{8287C0E0-495A-4C5E-8653-3FCB5EAF0F43}']
  end;

  [JavaSignature('wangpos/sdk4/emv/ICAPKInterface')]
  JICAPKInterface = interface(JIInterface)
    ['{4FC4C58F-B547-4254-A57C-12021F9CBBEF}']
    function getArithInd: JString; cdecl;
    function getCheckSum: JString; cdecl;
    function getExpDate: JString; cdecl;
    function getExponent: JString; cdecl;
    function getExponentLen: Integer; cdecl;
    function getHashInd: JString; cdecl;
    function getKeyID: JString; cdecl;
    function getModul: JString; cdecl;
    function getModulLen: Integer; cdecl;
    function getRID: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setArithInd(P1: JString): Integer; cdecl;
    function setCheckSum(P1: JString): Integer; cdecl;
    function setExpDate(P1: JString): Integer; cdecl;
    function setExponent(P1: JString): Integer; cdecl;
    function setHashInd(P1: JString): Integer; cdecl;
    function setKeyID(P1: JString): Integer; cdecl;
    function setModul(P1: JString): Integer; cdecl;
    function setRID(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJICAPKInterface = class(TJavaGenericImport<JICAPKInterfaceClass, JICAPKInterface>) end;

  JICAPKInterface_StubClass = interface(JBinderClass)
    ['{C910D440-AF6E-4D61-AEE9-E2E3501C9769}']
    {class} function asInterface(P1: JIBinder): JICAPKInterface; cdecl;
    {class} function init: JICAPKInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/ICAPKInterface$Stub')]
  JICAPKInterface_Stub = interface(JBinder)
    ['{F6535900-A04B-4399-B63B-C7D36CD7B46F}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJICAPKInterface_Stub = class(TJavaGenericImport<JICAPKInterface_StubClass, JICAPKInterface_Stub>) end;

  JICAPKInterface_Stub_aClass = interface(JObjectClass)
    ['{D11E1487-B38D-434F-BAB6-72A643A37AE9}']
  end;

  [JavaSignature('wangpos/sdk4/emv/ICAPKInterface$Stub$a')]
  JICAPKInterface_Stub_a = interface(JObject)
    ['{F8B8E155-DC4B-4CE6-B886-EB2698FDE9BE}']
    function asBinder: JIBinder; cdecl;
    function getArithInd: JString; cdecl;
    function getCheckSum: JString; cdecl;
    function getExpDate: JString; cdecl;
    function getExponent: JString; cdecl;
    function getExponentLen: Integer; cdecl;
    function getHashInd: JString; cdecl;
    function getKeyID: JString; cdecl;
    function getModul: JString; cdecl;
    function getModulLen: Integer; cdecl;
    function getRID: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setArithInd(P1: JString): Integer; cdecl;
    function setCheckSum(P1: JString): Integer; cdecl;
    function setExpDate(P1: JString): Integer; cdecl;
    function setExponent(P1: JString): Integer; cdecl;
    function setHashInd(P1: JString): Integer; cdecl;
    function setKeyID(P1: JString): Integer; cdecl;
    function setModul(P1: JString): Integer; cdecl;
    function setRID(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJICAPKInterface_Stub_a = class(TJavaGenericImport<JICAPKInterface_Stub_aClass, JICAPKInterface_Stub_a>) end;

  JICAPKRevokeInterfaceClass = interface(JIInterfaceClass)
    ['{36D96C67-17A4-4FC6-B7F7-94BA0892B832}']
  end;

  [JavaSignature('wangpos/sdk4/emv/ICAPKRevokeInterface')]
  JICAPKRevokeInterface = interface(JIInterface)
    ['{05E72281-F6EB-4DCE-9D01-36FD6D0F2540}']
    function getCAPKI: JString; cdecl;
    function getCERTSerial: JString; cdecl;
    function getRID: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setCAPKI(P1: JString): Integer; cdecl;
    function setCERTSerial(P1: JString): Integer; cdecl;
    function setRID(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJICAPKRevokeInterface = class(TJavaGenericImport<JICAPKRevokeInterfaceClass, JICAPKRevokeInterface>) end;

  JICAPKRevokeInterface_StubClass = interface(JBinderClass)
    ['{984128FA-C18E-4C36-91F5-A33901D78C0C}']
    {class} function asInterface(P1: JIBinder): JICAPKRevokeInterface; cdecl;
    {class} function init: JICAPKRevokeInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/ICAPKRevokeInterface$Stub')]
  JICAPKRevokeInterface_Stub = interface(JBinder)
    ['{082B227D-EFB5-409C-8259-E9A9F4656C55}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJICAPKRevokeInterface_Stub = class(TJavaGenericImport<JICAPKRevokeInterface_StubClass, JICAPKRevokeInterface_Stub>) end;

  JICAPKRevokeInterface_Stub_aClass = interface(JObjectClass)
    ['{1142F5F9-70DC-4AC4-B644-86FF3FC6030B}']
  end;

  [JavaSignature('wangpos/sdk4/emv/ICAPKRevokeInterface$Stub$a')]
  JICAPKRevokeInterface_Stub_a = interface(JObject)
    ['{96529690-0BD6-4D1F-BFA4-8387B5256F1B}']
    function asBinder: JIBinder; cdecl;
    function getCAPKI: JString; cdecl;
    function getCERTSerial: JString; cdecl;
    function getRID: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setCAPKI(P1: JString): Integer; cdecl;
    function setCERTSerial(P1: JString): Integer; cdecl;
    function setRID(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJICAPKRevokeInterface_Stub_a = class(TJavaGenericImport<JICAPKRevokeInterface_Stub_aClass, JICAPKRevokeInterface_Stub_a>) end;

  JICallbackListenerClass = interface(JIInterfaceClass)
    ['{2C1575A2-64C5-41E5-B329-F070B5400268}']
  end;

  [JavaSignature('wangpos/sdk4/emv/ICallbackListener')]
  JICallbackListener = interface(JIInterface)
    ['{9099FA65-815E-41DF-99CB-A3E4E8F52208}']
    function emvCoreCallback(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: TJavaArray<Integer>): Integer; cdecl;
  end;
  TJICallbackListener = class(TJavaGenericImport<JICallbackListenerClass, JICallbackListener>) end;

  JICallbackListener_Stub_aClass = interface(JObjectClass)
    ['{AE10E461-7F7B-440D-B228-F3A33DF4CD0D}']
  end;

  [JavaSignature('wangpos/sdk4/emv/ICallbackListener$Stub$a')]
  JICallbackListener_Stub_a = interface(JObject)
    ['{871A0D07-1B50-45A6-8258-4CBB7E7F36AC}']
    function asBinder: JIBinder; cdecl;
    function emvCoreCallback(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>; P4: TJavaArray<Integer>): Integer; cdecl;
  end;
  TJICallbackListener_Stub_a = class(TJavaGenericImport<JICallbackListener_Stub_aClass, JICallbackListener_Stub_a>) end;

  JIEmvAppListInterfaceClass = interface(JIInterfaceClass)
    ['{4A2D9522-9FC9-4F6A-8755-37AABE8604B4}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvAppListInterface')]
  JIEmvAppListInterface = interface(JIInterface)
    ['{C89BAB9B-FD39-45F1-9814-BDBDE13B8D35}']
    function getAID: JString; cdecl;
    function getAIDLen: Integer; cdecl;
    function getAcquierId: JString; cdecl;
    function getAppName: JString; cdecl;
    function getBOnlinePin: Integer; cdecl;
    function getCLNotAllowFlag: JString; cdecl;
    function getCL_CVMLimit: Int64; cdecl;
    function getCL_FloorLimit: Int64; cdecl;
    function getCL_TransLimit: Int64; cdecl;
    function getCL_bAmount0Check: JString; cdecl;
    function getCL_bAmount0Option: JString; cdecl;
    function getCL_bCVMLimitCheck: JString; cdecl;
    function getCL_bFloorLimitCheck: JString; cdecl;
    function getCL_bStatusCheck: Integer; cdecl;
    function getCL_bTransLimitCheck: JString; cdecl;
    function getCountryCode: JString; cdecl;
    function getDDOL: JString; cdecl;
    function getEC_TermLimit: Int64; cdecl;
    function getEC_bTermLimitCheck: Integer; cdecl;
    function getExTermCapab: JString; cdecl;
    function getFloorLimit: Int64; cdecl;
    function getFloorLimitCheck: Integer; cdecl;
    function getMaxTargetPer: Integer; cdecl;
    function getMerchCateCode: JString; cdecl;
    function getMerchId: JString; cdecl;
    function getMerchName: JString; cdecl;
    function getPPassRdCVMLmtFlg: JString; cdecl;
    function getPPassRdClssFLmtFlg: JString; cdecl;
    function getPPassRdClssTxnLmtFlg: JString; cdecl;
    function getPPassRdClssTxnLmtNoONdeviceFlg: JString; cdecl;
    function getPPassRdClssTxnLmtONdeviceFlg: JString; cdecl;
    function getPPassTACDefault: JString; cdecl;
    function getPPassTACDenial: JString; cdecl;
    function getPPassTACOnline: JString; cdecl;
    function getPPassTermFLmtFlg: JString; cdecl;
    function getPriority: Integer; cdecl;
    function getRandTransSel: Integer; cdecl;
    function getRdClssTxnLmtNoONdevice: Int64; cdecl;
    function getRdClssTxnLmtONdevice: Int64; cdecl;
    function getReferCurrCode: JString; cdecl;
    function getReferCurrExp: JString; cdecl;
    function getRiskManData: JString; cdecl;
    function getSecurityCap: TJavaArray<Byte>; cdecl;
    function getSelFlag: JString; cdecl;
    function getTACDefault: JString; cdecl;
    function getTACDenial: JString; cdecl;
    function getTACOnline: JString; cdecl;
    function getTDOL: JString; cdecl;
    function getTargetPer: Integer; cdecl;
    function getTermCapab: Integer; cdecl;
    function getTermId: JString; cdecl;
    function getTermInfoEnableFlag: Integer; cdecl;
    function getTermQuali_byte2: Integer; cdecl;
    function getTermTransQuali: JString; cdecl;
    function getTerminalType: Integer; cdecl;
    function getThreshold: Int64; cdecl;
    function getTransCateCode: JString; cdecl;
    function getTransCurrCode: JString; cdecl;
    function getTransCurrExp: JString; cdecl;
    function getTransType: JString; cdecl;
    function getUDOL: TJavaArray<Byte>; cdecl;
    function getUDOLLen: TJavaArray<Byte>; cdecl;
    function getUcCVMCap: TJavaArray<Byte>; cdecl;
    function getUcCVMCapNoCVM: TJavaArray<Byte>; cdecl;
    function getUcCardDataInputCap: TJavaArray<Byte>; cdecl;
    function getUcKernelConfig: TJavaArray<Byte>; cdecl;
    function getUcMagStrCVMCapNoCVM: TJavaArray<Byte>; cdecl;
    function getUcMagStrCVMCapWithCVM: TJavaArray<Byte>; cdecl;
    function getUcMagSupportFlg: TJavaArray<Byte>; cdecl;
    function getVelocityCheck: Integer; cdecl;
    function getVersion: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function parseMCByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setAID(P1: JString): Integer; cdecl;
    procedure setAcquierId(P1: JString); cdecl;
    procedure setAppName(P1: JString); cdecl;
    procedure setBOnlinePin(P1: Integer); cdecl;
    procedure setCLNotAllowFlag(P1: JString); cdecl;
    procedure setCL_CVMLimit(P1: Int64); cdecl;
    procedure setCL_FloorLimit(P1: Int64); cdecl;
    procedure setCL_TransLimit(P1: Int64); cdecl;
    procedure setCL_bAmount0Check(P1: JString); cdecl;
    procedure setCL_bAmount0Option(P1: JString); cdecl;
    procedure setCL_bCVMLimitCheck(P1: JString); cdecl;
    procedure setCL_bFloorLimitCheck(P1: JString); cdecl;
    function setCL_bStatusCheck(P1: Integer): Integer; cdecl;
    procedure setCL_bTransLimitCheck(P1: JString); cdecl;
    function setCountryCode(P1: JString): Integer; cdecl;
    procedure setDDOL(P1: JString); cdecl;
    procedure setEC_TermLimit(P1: Int64); cdecl;
    procedure setEC_bTermLimitCheck(P1: Integer); cdecl;
    function setExTermCapab(P1: JString): Integer; cdecl;
    procedure setFloorLimit(P1: Int64); cdecl;
    procedure setFloorLimitCheck(P1: Integer); cdecl;
    procedure setMagAvn(P1: TJavaArray<Byte>); cdecl;
    function setMaxTargetPer(P1: Integer): Integer; cdecl;
    procedure setMerchCateCode(P1: JString); cdecl;
    procedure setMerchId(P1: JString); cdecl;
    procedure setMerchName(P1: JString); cdecl;
    procedure setPPassRdCVMLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssFLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtNoONdeviceFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtONdeviceFlg(P1: JString); cdecl;
    procedure setPPassTACDefault(P1: JString); cdecl;
    procedure setPPassTACDenial(P1: JString); cdecl;
    procedure setPPassTACOnline(P1: JString); cdecl;
    procedure setPPassTermFLmtFlg(P1: JString); cdecl;
    procedure setPriority(P1: Integer); cdecl;
    function setRandTransSel(P1: Integer): Integer; cdecl;
    procedure setRdClssTxnLmtNoONdevice(P1: Int64); cdecl;
    procedure setRdClssTxnLmtONdevice(P1: Int64); cdecl;
    procedure setReferCurrCode(P1: JString); cdecl;
    procedure setReferCurrExp(P1: JString); cdecl;
    procedure setRiskManData(P1: JString); cdecl;
    procedure setSecurityCap(P1: TJavaArray<Byte>); cdecl;
    procedure setSelFlag(P1: JString); cdecl;
    procedure setTACDefault(P1: JString); cdecl;
    procedure setTACDenial(P1: JString); cdecl;
    procedure setTACOnline(P1: JString); cdecl;
    procedure setTDOL(P1: JString); cdecl;
    function setTargetPer(P1: Integer): Integer; cdecl;
    function setTermCapab(P1: Integer): Integer; cdecl;
    procedure setTermId(P1: JString); cdecl;
    function setTermInfoEnableFlag(P1: Integer): Integer; cdecl;
    procedure setTermQuali_byte2(P1: Integer); cdecl;
    function setTermTransQuali(P1: JString): Integer; cdecl;
    function setTerminalType(P1: Integer): Integer; cdecl;
    procedure setThreshold(P1: Int64); cdecl;
    function setTransCateCode(P1: JString): Integer; cdecl;
    procedure setTransCurrCode(P1: JString); cdecl;
    procedure setTransCurrExp(P1: JString); cdecl;
    procedure setTransType(P1: JString); cdecl;
    procedure setUDOL(P1: TJavaArray<Byte>); cdecl;
    procedure setUDOLLen(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCVMCap(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCVMCapNoCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCardDataInputCap(P1: TJavaArray<Byte>); cdecl;
    procedure setUcKernelConfig(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagStrCVMCapNoCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagStrCVMCapWithCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagSupportFlg(P1: TJavaArray<Byte>); cdecl;
    function setVelocityCheck(P1: Integer): Integer; cdecl;
    function setVersion(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
    function toMCByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIEmvAppListInterface = class(TJavaGenericImport<JIEmvAppListInterfaceClass, JIEmvAppListInterface>) end;

  JIEmvAppListInterface_StubClass = interface(JBinderClass)
    ['{55145142-2397-451D-8F95-1D8596A2FBD6}']
    {class} function asInterface(P1: JIBinder): JIEmvAppListInterface; cdecl;
    {class} function init: JIEmvAppListInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvAppListInterface$Stub')]
  JIEmvAppListInterface_Stub = interface(JBinder)
    ['{404CEB6E-36F8-435D-A5E4-F15D1066B3E9}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIEmvAppListInterface_Stub = class(TJavaGenericImport<JIEmvAppListInterface_StubClass, JIEmvAppListInterface_Stub>) end;

  JIEmvAppListInterface_Stub_aClass = interface(JObjectClass)
    ['{0F5C3A79-86D0-4D63-991F-642AC06B4EA7}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvAppListInterface$Stub$a')]
  JIEmvAppListInterface_Stub_a = interface(JObject)
    ['{31A00F94-B342-4741-9CD6-0704F9520BD1}']
    function asBinder: JIBinder; cdecl;
    function getAID: JString; cdecl;
    function getAIDLen: Integer; cdecl;
    function getAcquierId: JString; cdecl;
    function getAppName: JString; cdecl;
    function getBOnlinePin: Integer; cdecl;
    function getCLNotAllowFlag: JString; cdecl;
    function getCL_CVMLimit: Int64; cdecl;
    function getCL_FloorLimit: Int64; cdecl;
    function getCL_TransLimit: Int64; cdecl;
    function getCL_bAmount0Check: JString; cdecl;
    function getCL_bAmount0Option: JString; cdecl;
    function getCL_bCVMLimitCheck: JString; cdecl;
    function getCL_bFloorLimitCheck: JString; cdecl;
    function getCL_bStatusCheck: Integer; cdecl;
    function getCL_bTransLimitCheck: JString; cdecl;
    function getCountryCode: JString; cdecl;
    function getDDOL: JString; cdecl;
    function getEC_TermLimit: Int64; cdecl;
    function getEC_bTermLimitCheck: Integer; cdecl;
    function getExTermCapab: JString; cdecl;
    function getFloorLimit: Int64; cdecl;
    function getFloorLimitCheck: Integer; cdecl;
    function getMaxTargetPer: Integer; cdecl;
    function getMerchCateCode: JString; cdecl;
    function getMerchId: JString; cdecl;
    function getMerchName: JString; cdecl;
    function getPPassRdCVMLmtFlg: JString; cdecl;
    function getPPassRdClssFLmtFlg: JString; cdecl;
    function getPPassRdClssTxnLmtFlg: JString; cdecl;
    function getPPassRdClssTxnLmtNoONdeviceFlg: JString; cdecl;
    function getPPassRdClssTxnLmtONdeviceFlg: JString; cdecl;
    function getPPassTACDefault: JString; cdecl;
    function getPPassTACDenial: JString; cdecl;
    function getPPassTACOnline: JString; cdecl;
    function getPPassTermFLmtFlg: JString; cdecl;
    function getPriority: Integer; cdecl;
    function getRandTransSel: Integer; cdecl;
    function getRdClssTxnLmtNoONdevice: Int64; cdecl;
    function getRdClssTxnLmtONdevice: Int64; cdecl;
    function getReferCurrCode: JString; cdecl;
    function getReferCurrExp: JString; cdecl;
    function getRiskManData: JString; cdecl;
    function getSecurityCap: TJavaArray<Byte>; cdecl;
    function getSelFlag: JString; cdecl;
    function getTACDefault: JString; cdecl;
    function getTACDenial: JString; cdecl;
    function getTACOnline: JString; cdecl;
    function getTDOL: JString; cdecl;
    function getTargetPer: Integer; cdecl;
    function getTermCapab: Integer; cdecl;
    function getTermId: JString; cdecl;
    function getTermInfoEnableFlag: Integer; cdecl;
    function getTermQuali_byte2: Integer; cdecl;
    function getTermTransQuali: JString; cdecl;
    function getTerminalType: Integer; cdecl;
    function getThreshold: Int64; cdecl;
    function getTransCateCode: JString; cdecl;
    function getTransCurrCode: JString; cdecl;
    function getTransCurrExp: JString; cdecl;
    function getTransType: JString; cdecl;
    function getUDOL: TJavaArray<Byte>; cdecl;
    function getUDOLLen: TJavaArray<Byte>; cdecl;
    function getUcCVMCap: TJavaArray<Byte>; cdecl;
    function getUcCVMCapNoCVM: TJavaArray<Byte>; cdecl;
    function getUcCardDataInputCap: TJavaArray<Byte>; cdecl;
    function getUcKernelConfig: TJavaArray<Byte>; cdecl;
    function getUcMagStrCVMCapNoCVM: TJavaArray<Byte>; cdecl;
    function getUcMagStrCVMCapWithCVM: TJavaArray<Byte>; cdecl;
    function getUcMagSupportFlg: TJavaArray<Byte>; cdecl;
    function getVelocityCheck: Integer; cdecl;
    function getVersion: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function parseMCByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setAID(P1: JString): Integer; cdecl;
    procedure setAcquierId(P1: JString); cdecl;
    procedure setAppName(P1: JString); cdecl;
    procedure setBOnlinePin(P1: Integer); cdecl;
    procedure setCLNotAllowFlag(P1: JString); cdecl;
    procedure setCL_CVMLimit(P1: Int64); cdecl;
    procedure setCL_FloorLimit(P1: Int64); cdecl;
    procedure setCL_TransLimit(P1: Int64); cdecl;
    procedure setCL_bAmount0Check(P1: JString); cdecl;
    procedure setCL_bAmount0Option(P1: JString); cdecl;
    procedure setCL_bCVMLimitCheck(P1: JString); cdecl;
    procedure setCL_bFloorLimitCheck(P1: JString); cdecl;
    function setCL_bStatusCheck(P1: Integer): Integer; cdecl;
    procedure setCL_bTransLimitCheck(P1: JString); cdecl;
    function setCountryCode(P1: JString): Integer; cdecl;
    procedure setDDOL(P1: JString); cdecl;
    procedure setEC_TermLimit(P1: Int64); cdecl;
    procedure setEC_bTermLimitCheck(P1: Integer); cdecl;
    function setExTermCapab(P1: JString): Integer; cdecl;
    procedure setFloorLimit(P1: Int64); cdecl;
    procedure setFloorLimitCheck(P1: Integer); cdecl;
    procedure setMagAvn(P1: TJavaArray<Byte>); cdecl;
    function setMaxTargetPer(P1: Integer): Integer; cdecl;
    procedure setMerchCateCode(P1: JString); cdecl;
    procedure setMerchId(P1: JString); cdecl;
    procedure setMerchName(P1: JString); cdecl;
    procedure setPPassRdCVMLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssFLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtNoONdeviceFlg(P1: JString); cdecl;
    procedure setPPassRdClssTxnLmtONdeviceFlg(P1: JString); cdecl;
    procedure setPPassTACDefault(P1: JString); cdecl;
    procedure setPPassTACDenial(P1: JString); cdecl;
    procedure setPPassTACOnline(P1: JString); cdecl;
    procedure setPPassTermFLmtFlg(P1: JString); cdecl;
    procedure setPriority(P1: Integer); cdecl;
    function setRandTransSel(P1: Integer): Integer; cdecl;
    procedure setRdClssTxnLmtNoONdevice(P1: Int64); cdecl;
    procedure setRdClssTxnLmtONdevice(P1: Int64); cdecl;
    procedure setReferCurrCode(P1: JString); cdecl;
    procedure setReferCurrExp(P1: JString); cdecl;
    procedure setRiskManData(P1: JString); cdecl;
    procedure setSecurityCap(P1: TJavaArray<Byte>); cdecl;
    procedure setSelFlag(P1: JString); cdecl;
    procedure setTACDefault(P1: JString); cdecl;
    procedure setTACDenial(P1: JString); cdecl;
    procedure setTACOnline(P1: JString); cdecl;
    procedure setTDOL(P1: JString); cdecl;
    function setTargetPer(P1: Integer): Integer; cdecl;
    function setTermCapab(P1: Integer): Integer; cdecl;
    procedure setTermId(P1: JString); cdecl;
    function setTermInfoEnableFlag(P1: Integer): Integer; cdecl;
    procedure setTermQuali_byte2(P1: Integer); cdecl;
    function setTermTransQuali(P1: JString): Integer; cdecl;
    function setTerminalType(P1: Integer): Integer; cdecl;
    procedure setThreshold(P1: Int64); cdecl;
    function setTransCateCode(P1: JString): Integer; cdecl;
    procedure setTransCurrCode(P1: JString); cdecl;
    procedure setTransCurrExp(P1: JString); cdecl;
    procedure setTransType(P1: JString); cdecl;
    procedure setUDOL(P1: TJavaArray<Byte>); cdecl;
    procedure setUDOLLen(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCVMCap(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCVMCapNoCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcCardDataInputCap(P1: TJavaArray<Byte>); cdecl;
    procedure setUcKernelConfig(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagStrCVMCapNoCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagStrCVMCapWithCVM(P1: TJavaArray<Byte>); cdecl;
    procedure setUcMagSupportFlg(P1: TJavaArray<Byte>); cdecl;
    function setVelocityCheck(P1: Integer): Integer; cdecl;
    function setVersion(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
    function toMCByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIEmvAppListInterface_Stub_a = class(TJavaGenericImport<JIEmvAppListInterface_Stub_aClass, JIEmvAppListInterface_Stub_a>) end;

  JIEmvCoreInterfaceClass = interface(JIInterfaceClass)
    ['{DFE0C692-6564-4671-A085-1FAAC5DB5D0C}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvCoreInterface')]
  JIEmvCoreInterface = interface(JIInterface)
    ['{937EAB4D-3550-4510-9A95-DBF609DEEA18}']
    function AppSelForLog(P1: Integer; P2: JICallbackListener): Integer; cdecl;
    function CleanTornLog_MC(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>): Integer; cdecl;
    procedure DeleteAllTornRecord; cdecl;
    function EmvLib_GetPrintStatus(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function KernalInit: Integer; cdecl;
    function L1_CarrierOnOFF(P1: Integer): Integer; cdecl;
    function L1_PICC_ARM_Read(P1: Integer; P2: Integer; P3: TJavaArray<Byte>): Integer; cdecl;
    function L1_PICC_ARM_Write(P1: Integer; P2: Integer; P3: Integer): Integer; cdecl;
    function L1_PICC_Digital: Integer; cdecl;
    function L1_PICC_TypeALoop: Integer; cdecl;
    function L1_PICC_TypeBLoop: Integer; cdecl;
    function PayWaveHandle(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>; P4: Integer): Integer; cdecl;
    function addAID(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function addAID_MC(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>): Integer; cdecl;
    function addCapk(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function addExceptPAN(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    function addIPKRevoke(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>): Integer; cdecl;
    function addPID(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function appSel(P1: Integer; P2: Integer; P3: JICallbackListener): Integer; cdecl;
    function cardAuth: Integer; cdecl;
    function delAllAID: Integer; cdecl;
    function delAllPID: Integer; cdecl;
    function delCapkAll: Integer; cdecl;
    function delExceptPANAll: Integer; cdecl;
    function delIPKRevokeAll: Integer; cdecl;
    function getAID(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getBalance(P1: TJavaArray<Byte>): Integer; cdecl;
    function getCapk(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getCoreTLVMessage(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getExceptPAN(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getIPKRevoke(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getLogItem(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getMagTrackData_MC(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getOutCome(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getPID(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    procedure getParam(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>); cdecl;
    function getPath: Integer; cdecl;
    function getScriptResult(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getSelectedAID(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getTLV(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getTornRecordTLV(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function importDetData(P1: TJavaArray<Byte>; P2: Integer; P3: Boolean): Integer; cdecl;
    function init: Integer; cdecl;
    function loadData_MC(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function nGenTrack1Data_MC_Mag(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    function nGenTrack2Data_MC_Mag(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    function procQPBOCTrans(P1: JICallbackListener): Integer; cdecl;
    function procTrans(P1: JICallbackListener): Integer; cdecl;
    function qPBOCPreProcess(P1: JICallbackListener): Integer; cdecl;
    function readAppData(P1: JICallbackListener): Integer; cdecl;
    function readLogRecord(P1: Integer): Integer; cdecl;
    function serailDebugPort(P1: Integer; P2: Integer): Integer; cdecl;
    function setDetConFlag_MC(P1: Integer): Integer; cdecl;
    function setOnDekReciceListener(P1: JICallbackListener): Integer; cdecl;
    procedure setParam(P1: TJavaArray<Byte>; P2: Integer); cdecl;
    function setParam_MC(P1: Byte; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    function setTLV(P1: Integer; P2: TJavaArray<Byte>; P3: Integer): Integer; cdecl;
    function setTermConfig(P1: TJavaArray<Byte>): Integer; cdecl;
    procedure transInit; cdecl;
  end;
  TJIEmvCoreInterface = class(TJavaGenericImport<JIEmvCoreInterfaceClass, JIEmvCoreInterface>) end;

  JIEmvCoreInterface_StubClass = interface(JBinderClass)
    ['{EAD07634-E562-4E85-A9EC-4CE8165A469B}']
    {class} function asInterface(P1: JIBinder): JIEmvCoreInterface; cdecl;
    {class} function init: JIEmvCoreInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvCoreInterface$Stub')]
  JIEmvCoreInterface_Stub = interface(JBinder)
    ['{CF32C680-AF84-4FA5-9A11-A050FEDB1720}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIEmvCoreInterface_Stub = class(TJavaGenericImport<JIEmvCoreInterface_StubClass, JIEmvCoreInterface_Stub>) end;

  JIEmvCoreInterface_Stub_aClass = interface(JObjectClass)
    ['{21E24577-8390-4138-8C9E-DC40DDC585FE}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvCoreInterface$Stub$a')]
  JIEmvCoreInterface_Stub_a = interface(JObject)
    ['{305668B2-0A6E-4FEF-BF15-7A84EBEEC3D0}']
    function AppSelForLog(P1: Integer; P2: JICallbackListener): Integer; cdecl;
    function CleanTornLog_MC(P1: TJavaObjectArray<JString>; P2: TJavaArray<Integer>): Integer; cdecl;
    procedure DeleteAllTornRecord; cdecl;
    function EmvLib_GetPrintStatus(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function KernalInit: Integer; cdecl;
    function L1_CarrierOnOFF(P1: Integer): Integer; cdecl;
    function L1_PICC_ARM_Read(P1: Integer; P2: Integer; P3: TJavaArray<Byte>): Integer; cdecl;
    function L1_PICC_ARM_Write(P1: Integer; P2: Integer; P3: Integer): Integer; cdecl;
    function L1_PICC_Digital: Integer; cdecl;
    function L1_PICC_TypeALoop: Integer; cdecl;
    function L1_PICC_TypeBLoop: Integer; cdecl;
    function PayWaveHandle(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>; P4: Integer): Integer; cdecl;
    function addAID(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function addAID_MC(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>): Integer; cdecl;
    function addCapk(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function addExceptPAN(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl;
    function addIPKRevoke(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>): Integer; cdecl;
    function addPID(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function appSel(P1: Integer; P2: Integer; P3: JICallbackListener): Integer; cdecl;
    function asBinder: JIBinder; cdecl;
    function cardAuth: Integer; cdecl;
    function delAllAID: Integer; cdecl;
    function delAllPID: Integer; cdecl;
    function delCapkAll: Integer; cdecl;
    function delExceptPANAll: Integer; cdecl;
    function delIPKRevokeAll: Integer; cdecl;
    function getAID(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getBalance(P1: TJavaArray<Byte>): Integer; cdecl;
    function getCapk(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getCoreTLVMessage(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getExceptPAN(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getIPKRevoke(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getLogItem(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getMagTrackData_MC(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getOutCome(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getPID(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    procedure getParam(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>); cdecl;
    function getPath: Integer; cdecl;
    function getScriptResult(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getSelectedAID(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function getTLV(P1: Integer; P2: TJavaArray<Byte>; P3: TJavaArray<Integer>): Integer; cdecl;
    function getTornRecordTLV(P1: TJavaArray<Byte>; P2: TJavaArray<Integer>): Integer; cdecl;
    function importDetData(P1: TJavaArray<Byte>; P2: Integer; P3: Boolean): Integer; cdecl;
    function init: Integer; cdecl; overload;
    function loadData_MC(P1: TJavaArray<Byte>; P2: Integer): Integer; cdecl;
    function nGenTrack1Data_MC_Mag(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    function nGenTrack2Data_MC_Mag(P1: TJavaArray<Byte>; P2: TJavaArray<Byte>): Integer; cdecl;
    function procQPBOCTrans(P1: JICallbackListener): Integer; cdecl;
    function procTrans(P1: JICallbackListener): Integer; cdecl;
    function qPBOCPreProcess(P1: JICallbackListener): Integer; cdecl;
    function readAppData(P1: JICallbackListener): Integer; cdecl;
    function readLogRecord(P1: Integer): Integer; cdecl;
    function serailDebugPort(P1: Integer; P2: Integer): Integer; cdecl;
    function setDetConFlag_MC(P1: Integer): Integer; cdecl;
    function setOnDekReciceListener(P1: JICallbackListener): Integer; cdecl;
    procedure setParam(P1: TJavaArray<Byte>; P2: Integer); cdecl;
    function setParam_MC(P1: Byte; P2: TJavaArray<Byte>; P3: TJavaArray<Byte>): Integer; cdecl;
    function setTLV(P1: Integer; P2: TJavaArray<Byte>; P3: Integer): Integer; cdecl;
    function setTermConfig(P1: TJavaArray<Byte>): Integer; cdecl;
    procedure transInit; cdecl;
  end;
  TJIEmvCoreInterface_Stub_a = class(TJavaGenericImport<JIEmvCoreInterface_Stub_aClass, JIEmvCoreInterface_Stub_a>) end;

  JIEmvParamInterfaceClass = interface(JIInterfaceClass)
    ['{7DA83125-7A97-4F23-AA66-0B6CEE40285F}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvParamInterface')]
  JIEmvParamInterface = interface(JIInterface)
    ['{2DF4F6DF-5AEB-4384-ABDE-27D16DCF0D26}']
    function getCL_bCashAUCCheck: JString; cdecl;
    function getCL_bCashBackAUCCheck: JString; cdecl;
    function getCL_bExceptionFileCheck: JString; cdecl;
    function getCountryCode: JString; cdecl;
    function getDRLSupportFlag: JString; cdecl;
    function getECTSI: Integer; cdecl;
    function getExTermCapab: JString; cdecl;
    function getFixedCashBackAmount: Int64; cdecl;
    function getFixedPasswd: JString; cdecl;
    function getFixedTransAmount: Int64; cdecl;
    function getForceOnline: Integer; cdecl;
    function getGetDataPIN: Integer; cdecl;
    function getMerchCateCode: JString; cdecl;
    function getMerchId: JString; cdecl;
    function getMerchName: JString; cdecl;
    function getReferCurrCode: JString; cdecl;
    function getReferCurrCon: Integer; cdecl;
    function getReferCurrExp: JString; cdecl;
    function getSupportDefaultDDOL: Integer; cdecl;
    function getSupportDefaultTDOL: Integer; cdecl;
    function getSupportPSESel: Integer; cdecl;
    function getTermCapab: Integer; cdecl;
    function getTermId: JString; cdecl;
    function getTermTransQuali: JString; cdecl;
    function getTerminalType: Integer; cdecl;
    function getTransCurrCode: JString; cdecl;
    function getTransCurrExp: JString; cdecl;
    function getTransType: Int64; cdecl;
    function getUcDataCaptureFlag: Integer; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    procedure setCL_bCashAUCCheck(P1: JString); cdecl;
    procedure setCL_bCashBackAUCCheck(P1: JString); cdecl;
    procedure setCL_bExceptionFileCheck(P1: JString); cdecl;
    function setCountryCode(P1: JString): Integer; cdecl;
    procedure setDRLSupportFlag(P1: JString); cdecl;
    function setECTSI(P1: Integer): Integer; cdecl;
    function setExTermCapab(P1: JString): Integer; cdecl;
    function setFixedCashBackAmount(P1: Int64): Integer; cdecl;
    function setFixedPasswd(P1: JString): Integer; cdecl;
    function setFixedTransAmount(P1: Int64): Integer; cdecl;
    function setForceOnline(P1: Integer): Integer; cdecl;
    function setGetDataPIN(P1: Integer): Integer; cdecl;
    function setMerchCateCode(P1: JString): Integer; cdecl;
    function setMerchId(P1: JString): Integer; cdecl;
    function setMerchName(P1: JString): Integer; cdecl;
    function setReferCurrCode(P1: JString): Integer; cdecl;
    function setReferCurrCon(P1: Integer): Integer; cdecl;
    function setReferCurrExp(P1: JString): Integer; cdecl;
    function setSupportDefaultDDOL(P1: Integer): Integer; cdecl;
    function setSupportDefaultTDOL(P1: Integer): Integer; cdecl;
    function setSupportPSESel(P1: Integer): Integer; cdecl;
    function setTermCapab(P1: Integer): Integer; cdecl;
    function setTermId(P1: JString): Integer; cdecl;
    function setTermTransQuali(P1: JString): Integer; cdecl;
    function setTerminalType(P1: Integer): Integer; cdecl;
    function setTransCurrCode(P1: JString): Integer; cdecl;
    function setTransCurrExp(P1: JString): Integer; cdecl;
    function setTransType(P1: Int64): Integer; cdecl;
    function setUcDataCaptureFlag(P1: Integer): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIEmvParamInterface = class(TJavaGenericImport<JIEmvParamInterfaceClass, JIEmvParamInterface>) end;

  JIEmvParamInterface_StubClass = interface(JBinderClass)
    ['{DD01F914-2201-45B7-A147-384905C97F3B}']
    {class} function asInterface(P1: JIBinder): JIEmvParamInterface; cdecl;
    {class} function init: JIEmvParamInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvParamInterface$Stub')]
  JIEmvParamInterface_Stub = interface(JBinder)
    ['{F4A61739-EB74-4B15-A35A-EB907060AF36}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIEmvParamInterface_Stub = class(TJavaGenericImport<JIEmvParamInterface_StubClass, JIEmvParamInterface_Stub>) end;

  JIEmvParamInterface_Stub_aClass = interface(JObjectClass)
    ['{882AA58B-2BEF-4FAF-9FE1-8DCF28B04D02}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IEmvParamInterface$Stub$a')]
  JIEmvParamInterface_Stub_a = interface(JObject)
    ['{1829769E-390E-4294-AA72-643C03F3C952}']
    function asBinder: JIBinder; cdecl;
    function getCL_bCashAUCCheck: JString; cdecl;
    function getCL_bCashBackAUCCheck: JString; cdecl;
    function getCL_bExceptionFileCheck: JString; cdecl;
    function getCountryCode: JString; cdecl;
    function getDRLSupportFlag: JString; cdecl;
    function getECTSI: Integer; cdecl;
    function getExTermCapab: JString; cdecl;
    function getFixedCashBackAmount: Int64; cdecl;
    function getFixedPasswd: JString; cdecl;
    function getFixedTransAmount: Int64; cdecl;
    function getForceOnline: Integer; cdecl;
    function getGetDataPIN: Integer; cdecl;
    function getMerchCateCode: JString; cdecl;
    function getMerchId: JString; cdecl;
    function getMerchName: JString; cdecl;
    function getReferCurrCode: JString; cdecl;
    function getReferCurrCon: Integer; cdecl;
    function getReferCurrExp: JString; cdecl;
    function getSupportDefaultDDOL: Integer; cdecl;
    function getSupportDefaultTDOL: Integer; cdecl;
    function getSupportPSESel: Integer; cdecl;
    function getTermCapab: Integer; cdecl;
    function getTermId: JString; cdecl;
    function getTermTransQuali: JString; cdecl;
    function getTerminalType: Integer; cdecl;
    function getTransCurrCode: JString; cdecl;
    function getTransCurrExp: JString; cdecl;
    function getTransType: Int64; cdecl;
    function getUcDataCaptureFlag: Integer; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    procedure setCL_bCashAUCCheck(P1: JString); cdecl;
    procedure setCL_bCashBackAUCCheck(P1: JString); cdecl;
    procedure setCL_bExceptionFileCheck(P1: JString); cdecl;
    function setCountryCode(P1: JString): Integer; cdecl;
    procedure setDRLSupportFlag(P1: JString); cdecl;
    function setECTSI(P1: Integer): Integer; cdecl;
    function setExTermCapab(P1: JString): Integer; cdecl;
    function setFixedCashBackAmount(P1: Int64): Integer; cdecl;
    function setFixedPasswd(P1: JString): Integer; cdecl;
    function setFixedTransAmount(P1: Int64): Integer; cdecl;
    function setForceOnline(P1: Integer): Integer; cdecl;
    function setGetDataPIN(P1: Integer): Integer; cdecl;
    function setMerchCateCode(P1: JString): Integer; cdecl;
    function setMerchId(P1: JString): Integer; cdecl;
    function setMerchName(P1: JString): Integer; cdecl;
    function setReferCurrCode(P1: JString): Integer; cdecl;
    function setReferCurrCon(P1: Integer): Integer; cdecl;
    function setReferCurrExp(P1: JString): Integer; cdecl;
    function setSupportDefaultDDOL(P1: Integer): Integer; cdecl;
    function setSupportDefaultTDOL(P1: Integer): Integer; cdecl;
    function setSupportPSESel(P1: Integer): Integer; cdecl;
    function setTermCapab(P1: Integer): Integer; cdecl;
    function setTermId(P1: JString): Integer; cdecl;
    function setTermTransQuali(P1: JString): Integer; cdecl;
    function setTerminalType(P1: Integer): Integer; cdecl;
    function setTransCurrCode(P1: JString): Integer; cdecl;
    function setTransCurrExp(P1: JString): Integer; cdecl;
    function setTransType(P1: Int64): Integer; cdecl;
    function setUcDataCaptureFlag(P1: Integer): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIEmvParamInterface_Stub_a = class(TJavaGenericImport<JIEmvParamInterface_Stub_aClass, JIEmvParamInterface_Stub_a>) end;

  JIExceptPANInterfaceClass = interface(JIInterfaceClass)
    ['{A2C7CDFF-D273-442B-A989-0598EB88332A}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IExceptPANInterface')]
  JIExceptPANInterface = interface(JIInterface)
    ['{04FC3A24-D9F7-45F7-94CC-EABF37EE51E1}']
    function getPANASCII: JString; cdecl;
    function getPANASCIILen: Integer; cdecl;
    function getPANSeq: JString; cdecl;
    function getValidFlag: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setPANASCII(P1: JString): Integer; cdecl;
    function setPANASCIILen(P1: Integer): Integer; cdecl;
    function setPANSeq(P1: JString): Integer; cdecl;
    function setValidFlag(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIExceptPANInterface = class(TJavaGenericImport<JIExceptPANInterfaceClass, JIExceptPANInterface>) end;

  JIExceptPANInterface_StubClass = interface(JBinderClass)
    ['{292DA692-8924-4C0E-A70D-1BFCDFACE9D9}']
    {class} function asInterface(P1: JIBinder): JIExceptPANInterface; cdecl;
    {class} function init: JIExceptPANInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/IExceptPANInterface$Stub')]
  JIExceptPANInterface_Stub = interface(JBinder)
    ['{CAFE5711-90EB-448F-8969-CAFFF8998922}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIExceptPANInterface_Stub = class(TJavaGenericImport<JIExceptPANInterface_StubClass, JIExceptPANInterface_Stub>) end;

  JIExceptPANInterface_Stub_aClass = interface(JObjectClass)
    ['{D19BF5B7-1DC8-49AD-B4B7-7028B699F0F0}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IExceptPANInterface$Stub$a')]
  JIExceptPANInterface_Stub_a = interface(JObject)
    ['{2AFCD53F-A80D-4765-A8C6-30CE91B5362C}']
    function asBinder: JIBinder; cdecl;
    function getPANASCII: JString; cdecl;
    function getPANASCIILen: Integer; cdecl;
    function getPANSeq: JString; cdecl;
    function getValidFlag: JString; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setPANASCII(P1: JString): Integer; cdecl;
    function setPANASCIILen(P1: Integer): Integer; cdecl;
    function setPANSeq(P1: JString): Integer; cdecl;
    function setValidFlag(P1: JString): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIExceptPANInterface_Stub_a = class(TJavaGenericImport<JIExceptPANInterface_Stub_aClass, JIExceptPANInterface_Stub_a>) end;

  JIPayPassPreProcInterInfoInterfaceClass = interface(JIInterfaceClass)
    ['{2461A9DE-1ADF-4F68-96FA-E54707F38703}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IPayPassPreProcInterInfoInterface')]
  JIPayPassPreProcInterInfoInterface = interface(JIInterface)
    ['{18FC2D61-6DD1-4CAA-8EF6-BC5F6CFEE492}']
    function getAucAID: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucReaderTTQ: TJavaArray<Byte>; cdecl;
    function getAucTermFLmt: TJavaArray<Byte>; cdecl;
    function getUcAidLen: TJavaArray<Byte>; cdecl;
    function getUcCLAppNotAllowed: TJavaArray<Byte>; cdecl;
    function getUcRdCLFLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcRdCLTxnLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcRdCVMLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcStatusCheckFlg: TJavaArray<Byte>; cdecl;
    function getUcTermFLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcTermFLmtFlg: TJavaArray<Byte>; cdecl;
    function getUcZeroAmtFlg: TJavaArray<Byte>; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setAucAID(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucRFU(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucReaderTTQ(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucTermFLmt(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcAidLen(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcCLAppNotAllowed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCLFLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCLTxnLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCVMLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcStatusCheckFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcTermFLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcTermFLmtFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcZeroAmtFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIPayPassPreProcInterInfoInterface = class(TJavaGenericImport<JIPayPassPreProcInterInfoInterfaceClass, JIPayPassPreProcInterInfoInterface>) end;

  JIPayPassPreProcInterInfoInterface_StubClass = interface(JBinderClass)
    ['{142DAB5D-5A1B-49E8-B6AB-DF546FEB39B3}']
    {class} function asInterface(P1: JIBinder): JIPayPassPreProcInterInfoInterface; cdecl;
    {class} function init: JIPayPassPreProcInterInfoInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/IPayPassPreProcInterInfoInterface$Stub')]
  JIPayPassPreProcInterInfoInterface_Stub = interface(JBinder)
    ['{E63C08AF-AA40-478D-9B63-54B12770566D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIPayPassPreProcInterInfoInterface_Stub = class(TJavaGenericImport<JIPayPassPreProcInterInfoInterface_StubClass, JIPayPassPreProcInterInfoInterface_Stub>) end;

  JIPayPassPreProcInterInfoInterface_Stub_aClass = interface(JObjectClass)
    ['{A4814892-A9F9-48EF-90D9-A75C4A90BCFA}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IPayPassPreProcInterInfoInterface$Stub$a')]
  JIPayPassPreProcInterInfoInterface_Stub_a = interface(JObject)
    ['{DAC36020-8302-403B-BC29-889D643BFC46}']
    function asBinder: JIBinder; cdecl;
    function getAucAID: TJavaArray<Byte>; cdecl;
    function getAucRFU: TJavaArray<Byte>; cdecl;
    function getAucReaderTTQ: TJavaArray<Byte>; cdecl;
    function getAucTermFLmt: TJavaArray<Byte>; cdecl;
    function getUcAidLen: TJavaArray<Byte>; cdecl;
    function getUcCLAppNotAllowed: TJavaArray<Byte>; cdecl;
    function getUcRdCLFLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcRdCLTxnLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcRdCVMLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcStatusCheckFlg: TJavaArray<Byte>; cdecl;
    function getUcTermFLmtExceed: TJavaArray<Byte>; cdecl;
    function getUcTermFLmtFlg: TJavaArray<Byte>; cdecl;
    function getUcZeroAmtFlg: TJavaArray<Byte>; cdecl;
    function parseByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    function print: JString; cdecl;
    function setAucAID(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucRFU(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucReaderTTQ(P1: TJavaArray<Byte>): Integer; cdecl;
    function setAucTermFLmt(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcAidLen(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcCLAppNotAllowed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCLFLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCLTxnLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcRdCVMLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcStatusCheckFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcTermFLmtExceed(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcTermFLmtFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function setUcZeroAmtFlg(P1: TJavaArray<Byte>): Integer; cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIPayPassPreProcInterInfoInterface_Stub_a = class(TJavaGenericImport<JIPayPassPreProcInterInfoInterface_Stub_aClass, JIPayPassPreProcInterInfoInterface_Stub_a>) end;

  JIPayPassTermConfigInterfaceClass = interface(JIInterfaceClass)
    ['{4A4A4435-7031-4EFA-A8EC-8D26AF85A025}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IPayPassTermConfigInterface')]
  JIPayPassTermConfigInterface = interface(JIInterface)
    ['{3E06B96A-34E6-49EA-9B53-531EAB52CB27}']
    function getAucBalanceAfterGAC: JString; cdecl;
    function getAucBalanceBeforeGAC: JString; cdecl;
    function getAucInterDevSerNum: JString; cdecl;
    function getAucMaxLifeTimeTorn: JString; cdecl;
    function getAucMsgHoldTime: JString; cdecl;
    function getMaximumRelayRGP: JString; cdecl;
    function getMaximumRelayRGPFlg: JString; cdecl;
    function getMinimumRRGP: JString; cdecl;
    function getMinimumRRGPFlg: JString; cdecl;
    function getRelayRAT: JString; cdecl;
    function getRelayRATFlg: JString; cdecl;
    function getRelayRTTMT: JString; cdecl;
    function getRelayRTTMTFlg: JString; cdecl;
    function getTerminalETTFRRCAPDU: JString; cdecl;
    function getTerminalETTFRRCAPDUFlg: JString; cdecl;
    function getTerminalETTFRRRAPDU: JString; cdecl;
    function getTerminalETTFRRRAPDUFlg: JString; cdecl;
    function getUcBalanceAfterGACFlg: JString; cdecl;
    function getUcBalanceBeforeGACFlg: JString; cdecl;
    function getUcHoldTimeValue: JString; cdecl;
    function getUcHoldTimeValueFlg: JString; cdecl;
    function getUcInterDevSerNumFlg: JString; cdecl;
    function getUcKernelID: JString; cdecl;
    function getUcKernelIDFlg: JString; cdecl;
    function getUcMaxLifeTimeTornFlg: JString; cdecl;
    function getUcMaxNumberTorn: JString; cdecl;
    function getUcMaxNumberTornFlg: JString; cdecl;
    function getUcMobileSup: JString; cdecl;
    function getUcMobileSupFlg: JString; cdecl;
    function getUcMsgHoldTimeFlg: JString; cdecl;
    function parseMCByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    procedure setAucBalanceAfterGAC(P1: JString); cdecl;
    procedure setAucBalanceBeforeGAC(P1: JString); cdecl;
    procedure setAucInterDevSerNum(P1: JString); cdecl;
    procedure setAucMaxLifeTimeTorn(P1: JString); cdecl;
    procedure setAucMsgHoldTime(P1: JString); cdecl;
    procedure setMaximumRelayRGP(P1: JString); cdecl;
    procedure setMaximumRelayRGPFlg(P1: JString); cdecl;
    procedure setMinimumRRGP(P1: JString); cdecl;
    procedure setMinimumRRGPFlg(P1: JString); cdecl;
    procedure setRelayRAT(P1: JString); cdecl;
    procedure setRelayRATFlg(P1: JString); cdecl;
    procedure setRelayRTTMT(P1: JString); cdecl;
    procedure setRelayRTTMTFlg(P1: JString); cdecl;
    procedure setTerminalETTFRRCAPDU(P1: JString); cdecl;
    procedure setTerminalETTFRRCAPDUFlg(P1: JString); cdecl;
    procedure setTerminalETTFRRRAPDU(P1: JString); cdecl;
    procedure setTerminalETTFRRRAPDUFlg(P1: JString); cdecl;
    procedure setUcBalanceAfterGACFlg(P1: JString); cdecl;
    procedure setUcBalanceBeforeGACFlg(P1: JString); cdecl;
    procedure setUcHoldTimeValue(P1: JString); cdecl;
    procedure setUcHoldTimeValueFlg(P1: JString); cdecl;
    procedure setUcInterDevSerNumFlg(P1: JString); cdecl;
    procedure setUcKernelID(P1: JString); cdecl;
    procedure setUcKernelIDFlg(P1: JString); cdecl;
    procedure setUcMaxLifeTimeTornFlg(P1: JString); cdecl;
    procedure setUcMaxNumberTorn(P1: JString); cdecl;
    procedure setUcMaxNumberTornFlg(P1: JString); cdecl;
    procedure setUcMobileSup(P1: JString); cdecl;
    procedure setUcMobileSupFlg(P1: JString); cdecl;
    procedure setUcMsgHoldTimeFlg(P1: JString); cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIPayPassTermConfigInterface = class(TJavaGenericImport<JIPayPassTermConfigInterfaceClass, JIPayPassTermConfigInterface>) end;

  JIPayPassTermConfigInterface_StubClass = interface(JBinderClass)
    ['{5C448846-6BBC-4327-A94B-ED3679BD2E8F}']
    {class} function asInterface(P1: JIBinder): JIPayPassTermConfigInterface; cdecl;
    {class} function init: JIPayPassTermConfigInterface_Stub; cdecl;
  end;

  [JavaSignature('wangpos/sdk4/emv/IPayPassTermConfigInterface$Stub')]
  JIPayPassTermConfigInterface_Stub = interface(JBinder)
    ['{20D73B32-94C9-4149-9FAF-64BFEF1AB5C2}']
    function asBinder: JIBinder; cdecl;
    function onTransact(P1: Integer; P2: JParcel; P3: JParcel; P4: Integer): Boolean; cdecl;
  end;
  TJIPayPassTermConfigInterface_Stub = class(TJavaGenericImport<JIPayPassTermConfigInterface_StubClass, JIPayPassTermConfigInterface_Stub>) end;

  JIPayPassTermConfigInterface_Stub_aClass = interface(JObjectClass)
    ['{F7CCD055-F9B9-4DEF-B28E-C0B01F361020}']
  end;

  [JavaSignature('wangpos/sdk4/emv/IPayPassTermConfigInterface$Stub$a')]
  JIPayPassTermConfigInterface_Stub_a = interface(JObject)
    ['{123F352E-D158-43F6-BD7B-AC11525E319C}']
    function asBinder: JIBinder; cdecl;
    function getAucBalanceAfterGAC: JString; cdecl;
    function getAucBalanceBeforeGAC: JString; cdecl;
    function getAucInterDevSerNum: JString; cdecl;
    function getAucMaxLifeTimeTorn: JString; cdecl;
    function getAucMsgHoldTime: JString; cdecl;
    function getMaximumRelayRGP: JString; cdecl;
    function getMaximumRelayRGPFlg: JString; cdecl;
    function getMinimumRRGP: JString; cdecl;
    function getMinimumRRGPFlg: JString; cdecl;
    function getRelayRAT: JString; cdecl;
    function getRelayRATFlg: JString; cdecl;
    function getRelayRTTMT: JString; cdecl;
    function getRelayRTTMTFlg: JString; cdecl;
    function getTerminalETTFRRCAPDU: JString; cdecl;
    function getTerminalETTFRRCAPDUFlg: JString; cdecl;
    function getTerminalETTFRRRAPDU: JString; cdecl;
    function getTerminalETTFRRRAPDUFlg: JString; cdecl;
    function getUcBalanceAfterGACFlg: JString; cdecl;
    function getUcBalanceBeforeGACFlg: JString; cdecl;
    function getUcHoldTimeValue: JString; cdecl;
    function getUcHoldTimeValueFlg: JString; cdecl;
    function getUcInterDevSerNumFlg: JString; cdecl;
    function getUcKernelID: JString; cdecl;
    function getUcKernelIDFlg: JString; cdecl;
    function getUcMaxLifeTimeTornFlg: JString; cdecl;
    function getUcMaxNumberTorn: JString; cdecl;
    function getUcMaxNumberTornFlg: JString; cdecl;
    function getUcMobileSup: JString; cdecl;
    function getUcMobileSupFlg: JString; cdecl;
    function getUcMsgHoldTimeFlg: JString; cdecl;
    function parseMCByteArray(P1: TJavaArray<Byte>): Integer; cdecl;
    procedure setAucBalanceAfterGAC(P1: JString); cdecl;
    procedure setAucBalanceBeforeGAC(P1: JString); cdecl;
    procedure setAucInterDevSerNum(P1: JString); cdecl;
    procedure setAucMaxLifeTimeTorn(P1: JString); cdecl;
    procedure setAucMsgHoldTime(P1: JString); cdecl;
    procedure setMaximumRelayRGP(P1: JString); cdecl;
    procedure setMaximumRelayRGPFlg(P1: JString); cdecl;
    procedure setMinimumRRGP(P1: JString); cdecl;
    procedure setMinimumRRGPFlg(P1: JString); cdecl;
    procedure setRelayRAT(P1: JString); cdecl;
    procedure setRelayRATFlg(P1: JString); cdecl;
    procedure setRelayRTTMT(P1: JString); cdecl;
    procedure setRelayRTTMTFlg(P1: JString); cdecl;
    procedure setTerminalETTFRRCAPDU(P1: JString); cdecl;
    procedure setTerminalETTFRRCAPDUFlg(P1: JString); cdecl;
    procedure setTerminalETTFRRRAPDU(P1: JString); cdecl;
    procedure setTerminalETTFRRRAPDUFlg(P1: JString); cdecl;
    procedure setUcBalanceAfterGACFlg(P1: JString); cdecl;
    procedure setUcBalanceBeforeGACFlg(P1: JString); cdecl;
    procedure setUcHoldTimeValue(P1: JString); cdecl;
    procedure setUcHoldTimeValueFlg(P1: JString); cdecl;
    procedure setUcInterDevSerNumFlg(P1: JString); cdecl;
    procedure setUcKernelID(P1: JString); cdecl;
    procedure setUcKernelIDFlg(P1: JString); cdecl;
    procedure setUcMaxLifeTimeTornFlg(P1: JString); cdecl;
    procedure setUcMaxNumberTorn(P1: JString); cdecl;
    procedure setUcMaxNumberTornFlg(P1: JString); cdecl;
    procedure setUcMobileSup(P1: JString); cdecl;
    procedure setUcMobileSupFlg(P1: JString); cdecl;
    procedure setUcMsgHoldTimeFlg(P1: JString); cdecl;
    function toByteArray: TJavaArray<Byte>; cdecl;
  end;
  TJIPayPassTermConfigInterface_Stub_a = class(TJavaGenericImport<JIPayPassTermConfigInterface_Stub_aClass, JIPayPassTermConfigInterface_Stub_a>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('ppcomp.JICallbackListener_Stub', TypeInfo(ppcomp.JICallbackListener_Stub));
  TRegTypes.RegisterType('ppcomp.Jepwp_Callback', TypeInfo(ppcomp.Jepwp_Callback));
  TRegTypes.RegisterType('ppcomp.JDefines', TypeInfo(ppcomp.JDefines));
  TRegTypes.RegisterType('ppcomp.JDefines_EMV_Result', TypeInfo(ppcomp.JDefines_EMV_Result));
  TRegTypes.RegisterType('ppcomp.JEMV_TransactionInput', TypeInfo(ppcomp.JEMV_TransactionInput));
  TRegTypes.RegisterType('ppcomp.JMain', TypeInfo(ppcomp.JMain));
  TRegTypes.RegisterType('ppcomp.JMain_1', TypeInfo(ppcomp.JMain_1));
  TRegTypes.RegisterType('ppcomp.Jepwp_Parser', TypeInfo(ppcomp.Jepwp_Parser));
  TRegTypes.RegisterType('ppcomp.JByteUtil', TypeInfo(ppcomp.JByteUtil));
  TRegTypes.RegisterType('ppcomp.JCAPK', TypeInfo(ppcomp.JCAPK));
  TRegTypes.RegisterType('ppcomp.JMoneyUtil', TypeInfo(ppcomp.JMoneyUtil));
  TRegTypes.RegisterType('ppcomp.JNumberUtil', TypeInfo(ppcomp.JNumberUtil));
  TRegTypes.RegisterType('ppcomp.JPayPassTermConfig', TypeInfo(ppcomp.JPayPassTermConfig));
  TRegTypes.RegisterType('ppcomp.Jutil_StringUtils', TypeInfo(ppcomp.Jutil_StringUtils));
  TRegTypes.RegisterType('ppcomp.JTLV', TypeInfo(ppcomp.JTLV));
  TRegTypes.RegisterType('ppcomp.JTLV_DolItem', TypeInfo(ppcomp.JTLV_DolItem));
  TRegTypes.RegisterType('ppcomp.JTLVList', TypeInfo(ppcomp.JTLVList));
  TRegTypes.RegisterType('ppcomp.JTLV_', TypeInfo(ppcomp.JTLV_));
  TRegTypes.RegisterType('ppcomp.JGPOS', TypeInfo(ppcomp.JGPOS));
  TRegTypes.RegisterType('ppcomp.JGPOS_1', TypeInfo(ppcomp.JGPOS_1));
  TRegTypes.RegisterType('ppcomp.JKeyPurpose', TypeInfo(ppcomp.JKeyPurpose));
  TRegTypes.RegisterType('ppcomp.JKeyType', TypeInfo(ppcomp.JKeyType));
  TRegTypes.RegisterType('ppcomp.JBuildConstants', TypeInfo(ppcomp.JBuildConstants));
  TRegTypes.RegisterType('ppcomp.JIPPCompConstants', TypeInfo(ppcomp.JIPPCompConstants));
  TRegTypes.RegisterType('ppcomp.JIPPCompDSPCallbacks', TypeInfo(ppcomp.JIPPCompDSPCallbacks));
  TRegTypes.RegisterType('ppcomp.JPPCompBase', TypeInfo(ppcomp.JPPCompBase));
  TRegTypes.RegisterType('ppcomp.JPPComp', TypeInfo(ppcomp.JPPComp));
  TRegTypes.RegisterType('ppcomp.JPPComp_1', TypeInfo(ppcomp.JPPComp_1));
  TRegTypes.RegisterType('ppcomp.JPPComp_2', TypeInfo(ppcomp.JPPComp_2));
  TRegTypes.RegisterType('ppcomp.JPPComp_3', TypeInfo(ppcomp.JPPComp_3));
  TRegTypes.RegisterType('ppcomp.JPPCompBase_1', TypeInfo(ppcomp.JPPCompBase_1));
  TRegTypes.RegisterType('ppcomp.JPPCompBase_2', TypeInfo(ppcomp.JPPCompBase_2));
  TRegTypes.RegisterType('ppcomp.JPPCompBase_3', TypeInfo(ppcomp.JPPCompBase_3));
  TRegTypes.RegisterType('ppcomp.JPPCompException', TypeInfo(ppcomp.JPPCompException));
  TRegTypes.RegisterType('ppcomp.JPPCompNative', TypeInfo(ppcomp.JPPCompNative));
  TRegTypes.RegisterType('ppcomp.Jppcomp_a', TypeInfo(ppcomp.Jppcomp_a));
  TRegTypes.RegisterType('ppcomp.JLANGUAGE', TypeInfo(ppcomp.JLANGUAGE));
  TRegTypes.RegisterType('ppcomp.JResourceBundle', TypeInfo(ppcomp.JResourceBundle));
  TRegTypes.RegisterType('ppcomp.JListResourceBundle', TypeInfo(ppcomp.JListResourceBundle));
  TRegTypes.RegisterType('ppcomp.JExceptionDescription', TypeInfo(ppcomp.JExceptionDescription));
  TRegTypes.RegisterType('ppcomp.JPPCompAlreadyOpenException', TypeInfo(ppcomp.JPPCompAlreadyOpenException));
  TRegTypes.RegisterType('ppcomp.JPPCompCTLSSAppNautException', TypeInfo(ppcomp.JPPCompCTLSSAppNautException));
  TRegTypes.RegisterType('ppcomp.JPPCompCTLSSAppNavException', TypeInfo(ppcomp.JPPCompCTLSSAppNavException));
  TRegTypes.RegisterType('ppcomp.JPPCompCTLSSCommErrException', TypeInfo(ppcomp.JPPCompCTLSSCommErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompCTLSSInvalidatException', TypeInfo(ppcomp.JPPCompCTLSSInvalidatException));
  TRegTypes.RegisterType('ppcomp.JPPCompCTLSSMultipleException', TypeInfo(ppcomp.JPPCompCTLSSMultipleException));
  TRegTypes.RegisterType('ppcomp.JPPCompCTLSSProblemsException', TypeInfo(ppcomp.JPPCompCTLSSProblemsException));
  TRegTypes.RegisterType('ppcomp.JPPCompCancelException', TypeInfo(ppcomp.JPPCompCancelException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardAppNautException', TypeInfo(ppcomp.JPPCompCardAppNautException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardAppNavException', TypeInfo(ppcomp.JPPCompCardAppNavException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardBlockedException', TypeInfo(ppcomp.JPPCompCardBlockedException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardErrStructException', TypeInfo(ppcomp.JPPCompCardErrStructException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardExpiredException', TypeInfo(ppcomp.JPPCompCardExpiredException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardInvDataException', TypeInfo(ppcomp.JPPCompCardInvDataException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardInvException', TypeInfo(ppcomp.JPPCompCardInvException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardInvalidatException', TypeInfo(ppcomp.JPPCompCardInvalidatException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardNAuthException', TypeInfo(ppcomp.JPPCompCardNAuthException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardNotEffectException', TypeInfo(ppcomp.JPPCompCardNotEffectException));
  TRegTypes.RegisterType('ppcomp.JPPCompCardProblemsException', TypeInfo(ppcomp.JPPCompCardProblemsException));
  TRegTypes.RegisterType('ppcomp.JPPCompCommErrException', TypeInfo(ppcomp.JPPCompCommErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompCommtOutException', TypeInfo(ppcomp.JPPCompCommtOutException));
  TRegTypes.RegisterType('ppcomp.JPPCompDataNotFoundException', TypeInfo(ppcomp.JPPCompDataNotFoundException));
  TRegTypes.RegisterType('ppcomp.JPPCompDumbCardException', TypeInfo(ppcomp.JPPCompDumbCardException));
  TRegTypes.RegisterType('ppcomp.JPPCompErrCardException', TypeInfo(ppcomp.JPPCompErrCardException));
  TRegTypes.RegisterType('ppcomp.JPPCompErrException', TypeInfo(ppcomp.JPPCompErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompErrFallbackException', TypeInfo(ppcomp.JPPCompErrFallbackException));
  TRegTypes.RegisterType('ppcomp.JPPCompErrMandatException', TypeInfo(ppcomp.JPPCompErrMandatException));
  TRegTypes.RegisterType('ppcomp.JPPCompErrMaxAidException', TypeInfo(ppcomp.JPPCompErrMaxAidException));
  TRegTypes.RegisterType('ppcomp.JPPCompErrPinException', TypeInfo(ppcomp.JPPCompErrPinException));
  TRegTypes.RegisterType('ppcomp.JPPCompErrPktSecException', TypeInfo(ppcomp.JPPCompErrPktSecException));
  TRegTypes.RegisterType('ppcomp.JPPCompExecErrorException', TypeInfo(ppcomp.JPPCompExecErrorException));
  TRegTypes.RegisterType('ppcomp.JPPCompIntErrException', TypeInfo(ppcomp.JPPCompIntErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompInvAmountException', TypeInfo(ppcomp.JPPCompInvAmountException));
  TRegTypes.RegisterType('ppcomp.JPPCompInvCallException', TypeInfo(ppcomp.JPPCompInvCallException));
  TRegTypes.RegisterType('ppcomp.JPPCompInvModelException', TypeInfo(ppcomp.JPPCompInvModelException));
  TRegTypes.RegisterType('ppcomp.JPPCompInvParamException', TypeInfo(ppcomp.JPPCompInvParamException));
  TRegTypes.RegisterType('ppcomp.JPPCompJNIException', TypeInfo(ppcomp.JPPCompJNIException));
  TRegTypes.RegisterType('ppcomp.JPPCompLimitExcException', TypeInfo(ppcomp.JPPCompLimitExcException));
  TRegTypes.RegisterType('ppcomp.JPPCompMCDataErrException', TypeInfo(ppcomp.JPPCompMCDataErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompMFErrException', TypeInfo(ppcomp.JPPCompMFErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompMFErrFmtException', TypeInfo(ppcomp.JPPCompMFErrFmtException));
  TRegTypes.RegisterType('ppcomp.JPPCompMFNFoundException', TypeInfo(ppcomp.JPPCompMFNFoundException));
  TRegTypes.RegisterType('ppcomp.JPPCompNoApplicException', TypeInfo(ppcomp.JPPCompNoApplicException));
  TRegTypes.RegisterType('ppcomp.JPPCompNoBalanceException', TypeInfo(ppcomp.JPPCompNoBalanceException));
  TRegTypes.RegisterType('ppcomp.JPPCompNoCardException', TypeInfo(ppcomp.JPPCompNoCardException));
  TRegTypes.RegisterType('ppcomp.JPPCompNoFuncException', TypeInfo(ppcomp.JPPCompNoFuncException));
  TRegTypes.RegisterType('ppcomp.JPPCompNoSamException', TypeInfo(ppcomp.JPPCompNoSamException));
  TRegTypes.RegisterType('ppcomp.JPPCompNoSecException', TypeInfo(ppcomp.JPPCompNoSecException));
  TRegTypes.RegisterType('ppcomp.JPPCompNotOpenException', TypeInfo(ppcomp.JPPCompNotOpenException));
  TRegTypes.RegisterType('ppcomp.JPPCompNotifyException', TypeInfo(ppcomp.JPPCompNotifyException));
  TRegTypes.RegisterType('ppcomp.JPPCompParameterNullPointerException', TypeInfo(ppcomp.JPPCompParameterNullPointerException));
  TRegTypes.RegisterType('ppcomp.JPPCompPinBusyException', TypeInfo(ppcomp.JPPCompPinBusyException));
  TRegTypes.RegisterType('ppcomp.JPPCompPortErrException', TypeInfo(ppcomp.JPPCompPortErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompProcessingException', TypeInfo(ppcomp.JPPCompProcessingException));
  TRegTypes.RegisterType('ppcomp.JPPCompRspErrException', TypeInfo(ppcomp.JPPCompRspErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompRspOverflowException', TypeInfo(ppcomp.JPPCompRspOverflowException));
  TRegTypes.RegisterType('ppcomp.JPPCompSamErrException', TypeInfo(ppcomp.JPPCompSamErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompSamInvException', TypeInfo(ppcomp.JPPCompSamInvException));
  TRegTypes.RegisterType('ppcomp.JPPCompTabErrException', TypeInfo(ppcomp.JPPCompTabErrException));
  TRegTypes.RegisterType('ppcomp.JPPCompTabExpException', TypeInfo(ppcomp.JPPCompTabExpException));
  TRegTypes.RegisterType('ppcomp.JPPCompTimeoutException', TypeInfo(ppcomp.JPPCompTimeoutException));
  TRegTypes.RegisterType('ppcomp.JPPCompUnknownStatException', TypeInfo(ppcomp.JPPCompUnknownStatException));
  TRegTypes.RegisterType('ppcomp.JPPCompVCInvCurrException', TypeInfo(ppcomp.JPPCompVCInvCurrException));
  TRegTypes.RegisterType('ppcomp.JResourceBundle_Control', TypeInfo(ppcomp.JResourceBundle_Control));
  TRegTypes.RegisterType('ppcomp.JAtomicLong', TypeInfo(ppcomp.JAtomicLong));
  TRegTypes.RegisterType('ppcomp.Jlibemvbinder_BuildConfig', TypeInfo(ppcomp.Jlibemvbinder_BuildConfig));
  TRegTypes.RegisterType('ppcomp.JEmvBinder', TypeInfo(ppcomp.JEmvBinder));
  TRegTypes.RegisterType('ppcomp.Jlibemvbinder_CAPK', TypeInfo(ppcomp.Jlibemvbinder_CAPK));
  TRegTypes.RegisterType('ppcomp.JCAPKRevoke', TypeInfo(ppcomp.JCAPKRevoke));
  TRegTypes.RegisterType('ppcomp.JEmvAppList', TypeInfo(ppcomp.JEmvAppList));
  TRegTypes.RegisterType('ppcomp.JEmvBinder_1', TypeInfo(ppcomp.JEmvBinder_1));
  TRegTypes.RegisterType('ppcomp.JEmvBinder_2', TypeInfo(ppcomp.JEmvBinder_2));
  TRegTypes.RegisterType('ppcomp.JEmvCore', TypeInfo(ppcomp.JEmvCore));
  TRegTypes.RegisterType('ppcomp.JEmvParam', TypeInfo(ppcomp.JEmvParam));
  TRegTypes.RegisterType('ppcomp.JExceptPAN', TypeInfo(ppcomp.JExceptPAN));
  TRegTypes.RegisterType('ppcomp.JExceptPAN_1', TypeInfo(ppcomp.JExceptPAN_1));
  TRegTypes.RegisterType('ppcomp.JPID', TypeInfo(ppcomp.JPID));
  TRegTypes.RegisterType('ppcomp.JPayPassPreProcInterInfo', TypeInfo(ppcomp.JPayPassPreProcInterInfo));
  TRegTypes.RegisterType('ppcomp.Jlibemvbinder_PayPassTermConfig', TypeInfo(ppcomp.Jlibemvbinder_PayPassTermConfig));
  TRegTypes.RegisterType('ppcomp.JIBinderPool', TypeInfo(ppcomp.JIBinderPool));
  TRegTypes.RegisterType('ppcomp.JIBinderPool_Stub', TypeInfo(ppcomp.JIBinderPool_Stub));
  TRegTypes.RegisterType('ppcomp.JStub_a', TypeInfo(ppcomp.JStub_a));
  TRegTypes.RegisterType('ppcomp.JICAPKInterface', TypeInfo(ppcomp.JICAPKInterface));
  TRegTypes.RegisterType('ppcomp.JICAPKInterface_Stub', TypeInfo(ppcomp.JICAPKInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JICAPKInterface_Stub_a', TypeInfo(ppcomp.JICAPKInterface_Stub_a));
  TRegTypes.RegisterType('ppcomp.JICAPKRevokeInterface', TypeInfo(ppcomp.JICAPKRevokeInterface));
  TRegTypes.RegisterType('ppcomp.JICAPKRevokeInterface_Stub', TypeInfo(ppcomp.JICAPKRevokeInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JICAPKRevokeInterface_Stub_a', TypeInfo(ppcomp.JICAPKRevokeInterface_Stub_a));
  TRegTypes.RegisterType('ppcomp.JICallbackListener', TypeInfo(ppcomp.JICallbackListener));
  TRegTypes.RegisterType('ppcomp.JICallbackListener_Stub_a', TypeInfo(ppcomp.JICallbackListener_Stub_a));
  TRegTypes.RegisterType('ppcomp.JIEmvAppListInterface', TypeInfo(ppcomp.JIEmvAppListInterface));
  TRegTypes.RegisterType('ppcomp.JIEmvAppListInterface_Stub', TypeInfo(ppcomp.JIEmvAppListInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JIEmvAppListInterface_Stub_a', TypeInfo(ppcomp.JIEmvAppListInterface_Stub_a));
  TRegTypes.RegisterType('ppcomp.JIEmvCoreInterface', TypeInfo(ppcomp.JIEmvCoreInterface));
  TRegTypes.RegisterType('ppcomp.JIEmvCoreInterface_Stub', TypeInfo(ppcomp.JIEmvCoreInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JIEmvCoreInterface_Stub_a', TypeInfo(ppcomp.JIEmvCoreInterface_Stub_a));
  TRegTypes.RegisterType('ppcomp.JIEmvParamInterface', TypeInfo(ppcomp.JIEmvParamInterface));
  TRegTypes.RegisterType('ppcomp.JIEmvParamInterface_Stub', TypeInfo(ppcomp.JIEmvParamInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JIEmvParamInterface_Stub_a', TypeInfo(ppcomp.JIEmvParamInterface_Stub_a));
  TRegTypes.RegisterType('ppcomp.JIExceptPANInterface', TypeInfo(ppcomp.JIExceptPANInterface));
  TRegTypes.RegisterType('ppcomp.JIExceptPANInterface_Stub', TypeInfo(ppcomp.JIExceptPANInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JIExceptPANInterface_Stub_a', TypeInfo(ppcomp.JIExceptPANInterface_Stub_a));
  TRegTypes.RegisterType('ppcomp.JIPayPassPreProcInterInfoInterface', TypeInfo(ppcomp.JIPayPassPreProcInterInfoInterface));
  TRegTypes.RegisterType('ppcomp.JIPayPassPreProcInterInfoInterface_Stub', TypeInfo(ppcomp.JIPayPassPreProcInterInfoInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JIPayPassPreProcInterInfoInterface_Stub_a', TypeInfo(ppcomp.JIPayPassPreProcInterInfoInterface_Stub_a));
  TRegTypes.RegisterType('ppcomp.JIPayPassTermConfigInterface', TypeInfo(ppcomp.JIPayPassTermConfigInterface));
  TRegTypes.RegisterType('ppcomp.JIPayPassTermConfigInterface_Stub', TypeInfo(ppcomp.JIPayPassTermConfigInterface_Stub));
  TRegTypes.RegisterType('ppcomp.JIPayPassTermConfigInterface_Stub_a', TypeInfo(ppcomp.JIPayPassTermConfigInterface_Stub_a));
end;

initialization
  RegisterTypes;
end.


