.class public interface abstract Lcom/dp/sgp/ApiService/ApiService;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract AboutUs(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/aboutus"
    .end annotation
.end method

.method public abstract Email_Login(Lcom/dp/sgp/Model/SendCountryLoginBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/SendCountryLoginBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/SendCountryLoginBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/email_login"
    .end annotation
.end method

.method public abstract GET_TMSList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "wstoken"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "wsfunction"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "moodlewsrestformat"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit/http/Query;
            value = "month"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/NewTMS/NewTmsProgram;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/webservice/rest/server.php"
    .end annotation
.end method

.method public abstract HomeScreen(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/home"
    .end annotation
.end method

.method public abstract Login(Lcom/dp/sgp/Model/SendLoginBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/SendLoginBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/SendLoginBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/login"
    .end annotation
.end method

.method public abstract Notifications(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/HomeResponse/NotificationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/notifications"
    .end annotation
.end method

.method public abstract ProductDetails(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/ProductDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/products"
    .end annotation
.end method

.method public abstract Products(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/products"
    .end annotation
.end method

.method public abstract ProductsCommon(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/nityaseva/ProductCommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/products"
    .end annotation
.end method

.method public abstract SendOtpBody(Lcom/dp/sgp/Model/SendOtpBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/SendOtpBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/SendOtpBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/validateOtp"
    .end annotation
.end method

.method public abstract Upkram(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/upkram"
    .end annotation
.end method

.method public abstract Vibhag(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/vibhag"
    .end annotation
.end method

.method public abstract VibhagDetails(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/ProductDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/vibhag"
    .end annotation
.end method

.method public abstract Vibhagss(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Ljava/util/List<",
            "Lcom/dp/sgp/Model/ProductDetailsResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/vibhag"
    .end annotation
.end method

.method public abstract Youtube(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/YoutubeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/api/youtube"
    .end annotation
.end method

.method public abstract abjachandi(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/AbjachandiResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/abjachandi"
    .end annotation
.end method

.method public abstract dindoriyoutube(Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendHomeBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/YoutubeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/dindoriyoutube"
    .end annotation
.end method

.method public abstract newsaramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/saramrut/NewSwamiExample;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/saramrut"
    .end annotation
.end method

.method public abstract nityaseva(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/nityaseva"
    .end annotation
.end method

.method public abstract profile_update(Lcom/dp/sgp/Model/SendProfileBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/SendProfileBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/SendProfileBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/profile_update"
    .end annotation
.end method

.method public abstract saramrut(Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/HomeResponse/SendCommonBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/SwamiExample;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/saramrut"
    .end annotation
.end method

.method public abstract submitAbjachandi(Lcom/dp/sgp/Model/SubmitAbjaData;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/SubmitAbjaData;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/SubmitAbjaData;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/submitAbjachandi"
    .end annotation
.end method

.method public abstract submitSaramrut(Lcom/dp/sgp/Model/saramrut/SendSubmitBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/saramrut/SendSubmitBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/saramrut/SendSubmitBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/MainNityaseva/NityaSevaDataResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/submitSaramrut"
    .end annotation
.end method

.method public abstract update_mobileinfo(Lcom/dp/sgp/Model/UpdateDeviceInFo;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/UpdateDeviceInFo;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/UpdateDeviceInFo;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/SucessResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/update_mobileinfo"
    .end annotation
.end method

.method public abstract validateEmailOtp(Lcom/dp/sgp/Model/SendCountryOtpBody;Lretrofit/Callback;)V
    .param p1    # Lcom/dp/sgp/Model/SendCountryOtpBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dp/sgp/Model/SendCountryOtpBody;",
            "Lretrofit/Callback<",
            "Lcom/dp/sgp/Model/HomeResponse/HomeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v1/api/validateEmailOtp"
    .end annotation
.end method
