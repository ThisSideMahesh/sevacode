package com.dp.sgp.ApiService;

import com.dp.sgp.Constants.Key;
import com.dp.sgp.Model.AbjachandiResponse;
import com.dp.sgp.Model.CommonResponse;
import com.dp.sgp.Model.HomeResponse.HomeResponse;
import com.dp.sgp.Model.HomeResponse.NotificationResponse;
import com.dp.sgp.Model.HomeResponse.SendCommonBody;
import com.dp.sgp.Model.HomeResponse.SendHomeBody;
import com.dp.sgp.Model.MainNityaseva.NityaSevaDataResponse;
import com.dp.sgp.Model.NewTMS.NewTmsProgram;
import com.dp.sgp.Model.ProductDetailsResponse;
import com.dp.sgp.Model.SendCountryLoginBody;
import com.dp.sgp.Model.SendCountryOtpBody;
import com.dp.sgp.Model.SendLoginBody;
import com.dp.sgp.Model.SendOtpBody;
import com.dp.sgp.Model.SendProfileBody;
import com.dp.sgp.Model.SubmitAbjaData;
import com.dp.sgp.Model.SucessResponse;
import com.dp.sgp.Model.SwamiExample;
import com.dp.sgp.Model.UpdateDeviceInFo;
import com.dp.sgp.Model.YoutubeResponse;
import com.dp.sgp.Model.nityaseva.ProductCommonResponse;
import com.dp.sgp.Model.saramrut.NewSwamiExample;
import com.dp.sgp.Model.saramrut.SendSubmitBody;
import java.util.List;
import retrofit.Callback;
import retrofit.http.Body;
import retrofit.http.GET;
import retrofit.http.POST;
import retrofit.http.Query;

/* JADX INFO: loaded from: classes.dex */
public interface ApiService {
    @POST("/v1/api/aboutus")
    void AboutUs(@Body SendCommonBody sendCommonBody, Callback<CommonResponse> callback);

    @POST("/v1/api/email_login")
    void Email_Login(@Body SendCountryLoginBody sendCountryLoginBody, Callback<HomeResponse> callback);

    @GET("/webservice/rest/server.php")
    void GET_TMSList(@Query(Key.WS_TOKEN) String str, @Query(Key.WS_FUNCTION) String str2, @Query(Key.WS_FORMAT) String str3, @Query("month") int i, Callback<NewTmsProgram> callback);

    @POST("/api/home")
    void HomeScreen(@Body SendHomeBody sendHomeBody, Callback<HomeResponse> callback);

    @POST("/v1/api/login")
    void Login(@Body SendLoginBody sendLoginBody, Callback<HomeResponse> callback);

    @POST("/api/notifications")
    void Notifications(@Body SendHomeBody sendHomeBody, Callback<NotificationResponse> callback);

    @POST("/v1/api/products")
    void ProductDetails(@Body SendCommonBody sendCommonBody, Callback<ProductDetailsResponse> callback);

    @POST("/v1/api/products")
    void Products(@Body SendCommonBody sendCommonBody, Callback<CommonResponse> callback);

    @POST("/v1/api/products")
    void ProductsCommon(@Body SendCommonBody sendCommonBody, Callback<ProductCommonResponse> callback);

    @POST("/api/validateOtp")
    void SendOtpBody(@Body SendOtpBody sendOtpBody, Callback<HomeResponse> callback);

    @POST("/v1/api/upkram")
    void Upkram(@Body SendCommonBody sendCommonBody, Callback<CommonResponse> callback);

    @POST("/v1/api/vibhag")
    void Vibhag(@Body SendCommonBody sendCommonBody, Callback<CommonResponse> callback);

    @POST("/api/vibhag")
    void VibhagDetails(@Body SendCommonBody sendCommonBody, Callback<ProductDetailsResponse> callback);

    @POST("/v1/api/vibhag")
    void Vibhagss(@Body SendCommonBody sendCommonBody, Callback<List<ProductDetailsResponse>> callback);

    @POST("/api/youtube")
    void Youtube(@Body SendHomeBody sendHomeBody, Callback<YoutubeResponse> callback);

    @POST("/v1/api/abjachandi")
    void abjachandi(@Body SendCommonBody sendCommonBody, Callback<AbjachandiResponse> callback);

    @POST("/v1/api/dindoriyoutube")
    void dindoriyoutube(@Body SendHomeBody sendHomeBody, Callback<YoutubeResponse> callback);

    @POST("/v1/api/saramrut")
    void newsaramrut(@Body SendCommonBody sendCommonBody, Callback<NewSwamiExample> callback);

    @POST("/v1/api/nityaseva")
    void nityaseva(@Body SendCommonBody sendCommonBody, Callback<NityaSevaDataResponse> callback);

    @POST("/v1/api/profile_update")
    void profile_update(@Body SendProfileBody sendProfileBody, Callback<HomeResponse> callback);

    @POST("/v1/api/saramrut")
    void saramrut(@Body SendCommonBody sendCommonBody, Callback<SwamiExample> callback);

    @POST("/v1/api/submitAbjachandi")
    void submitAbjachandi(@Body SubmitAbjaData submitAbjaData, Callback<NityaSevaDataResponse> callback);

    @POST("/v1/api/submitSaramrut")
    void submitSaramrut(@Body SendSubmitBody sendSubmitBody, Callback<NityaSevaDataResponse> callback);

    @POST("/v1/api/update_mobileinfo")
    void update_mobileinfo(@Body UpdateDeviceInFo updateDeviceInFo, Callback<SucessResponse> callback);

    @POST("/v1/api/validateEmailOtp")
    void validateEmailOtp(@Body SendCountryOtpBody sendCountryOtpBody, Callback<HomeResponse> callback);
}
