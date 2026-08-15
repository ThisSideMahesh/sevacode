.class public Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$BitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "AboutUsDeatilsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;


# direct methods
.method public constructor <init>(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$BitmapAsyncTask;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 662
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 664
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 665
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 666
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 667
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 670
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 651
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$BitmapAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 677
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 678
    iget-object v0, p0, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$BitmapAsyncTask;->this$0:Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;

    invoke-static {v0, p1}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;->access$100(Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 651
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dp/sgp/View/Fragment/Details/AboutUsDeatilsFragment$BitmapAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 655
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
