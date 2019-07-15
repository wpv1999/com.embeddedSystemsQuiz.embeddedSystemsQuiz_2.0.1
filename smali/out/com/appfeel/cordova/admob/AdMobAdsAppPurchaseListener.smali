.class public Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;
.super Ljava/lang/Object;
.source "AdMobAdsAppPurchaseListener.java"

# interfaces
.implements Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static purchaseId:I


# instance fields
.field private admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

.field private purchases:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/ads/purchase/InAppPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchaseId:I

    return-void
.end method

.method public constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;)V
    .registers 3
    .param p1, "admobAds"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchases:Landroid/util/SparseArray;

    .line 43
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    .line 44
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchaseId:I

    return v0
.end method

.method static synthetic access$008()I
    .registers 2

    .prologue
    .line 37
    sget v0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchaseId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchaseId:I

    return v0
.end method

.method static synthetic access$100(Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchases:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;)Lcom/appfeel/cordova/admob/AdMobAds;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    return-object v0
.end method


# virtual methods
.method public getPurchase(I)Lcom/google/android/gms/ads/purchase/InAppPurchase;
    .registers 3
    .param p1, "purchaseId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/purchase/InAppPurchase;

    return-object v0
.end method

.method public declared-synchronized onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V
    .registers 4
    .param p1, "inAppPurchase"    # Lcom/google/android/gms/ads/purchase/InAppPurchase;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->admobAds:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v0, v0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;

    invoke-direct {v1, p0, p1}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener$1;-><init>(Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;Lcom/google/android/gms/ads/purchase/InAppPurchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 58
    monitor-exit p0

    return-void

    .line 48
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removePurchase(I)V
    .registers 3
    .param p1, "purchaseId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->purchases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    return-void
.end method
