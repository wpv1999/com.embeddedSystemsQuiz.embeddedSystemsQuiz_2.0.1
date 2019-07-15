.class public Lcom/appfeel/cordova/admob/AdMobAds;
.super Lorg/apache/cordova/CordovaPlugin;
.source "AdMobAds.java"

# interfaces
.implements Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;


# static fields
.field private static final ACTION_CREATE_BANNER_VIEW:Ljava/lang/String; = "createBannerView"

.field private static final ACTION_DESTROY_BANNER_VIEW:Ljava/lang/String; = "destroyBannerView"

.field private static final ACTION_RECORD_PLAY_BILLING_RESOLUTION:Ljava/lang/String; = "recordPlayBillingResolution"

.field private static final ACTION_RECORD_RESOLUTION:Ljava/lang/String; = "recordResolution"

.field private static final ACTION_REQUEST_INTERSTITIAL_AD:Ljava/lang/String; = "requestInterstitialAd"

.field private static final ACTION_SET_OPTIONS:Ljava/lang/String; = "setOptions"

.field private static final ACTION_SHOW_BANNER_AD:Ljava/lang/String; = "showBannerAd"

.field private static final ACTION_SHOW_INTERSTITIAL_AD:Ljava/lang/String; = "showInterstitialAd"

.field public static final ADMOBADS_LOGTAG:Ljava/lang/String; = "AdmMobAds"

.field public static final BANNER:Ljava/lang/String; = "banner"

.field private static final CORDOVA_4:Z

.field private static final DEFAULT_AD_PUBLISHER_ID:Ljava/lang/String; = "ca-app-pub-8440343014846849/3119840614"

.field private static final DEFAULT_INTERSTITIAL_PUBLISHER_ID:Ljava/lang/String; = "ca-app-pub-8440343014846849/4596573817"

.field private static final DEFAULT_TAPPX_ID:Ljava/lang/String; = "/120940746/Pub-2700-Android-8171"

.field public static final INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field private static final OPT_AD_EXTRAS:Ljava/lang/String; = "adExtras"

.field private static final OPT_AD_SIZE:Ljava/lang/String; = "adSize"

.field private static final OPT_AUTO_SHOW_BANNER:Ljava/lang/String; = "autoShowBanner"

.field private static final OPT_AUTO_SHOW_INTERSTITIAL:Ljava/lang/String; = "autoShowInterstitial"

.field private static final OPT_BANNER_AT_TOP:Ljava/lang/String; = "bannerAtTop"

.field private static final OPT_INTERSTITIAL_AD_ID:Ljava/lang/String; = "interstitialAdId"

.field private static final OPT_IS_TESTING:Ljava/lang/String; = "isTesting"

.field private static final OPT_OFFSET_STATUSBAR:Ljava/lang/String; = "offsetStatusBar"

.field private static final OPT_OVERLAP:Ljava/lang/String; = "overlap"

.field private static final OPT_PUBLISHER_ID:Ljava/lang/String; = "publisherId"

.field private static final OPT_TAPPX_ID_ANDROID:Ljava/lang/String; = "tappxIdAndroid"

.field private static final OPT_TAPPX_SHARE:Ljava/lang/String; = "tappxShare"


# instance fields
.field private adExtras:Lorg/json/JSONObject;

.field private adSize:Lcom/google/android/gms/ads/AdSize;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field private adViewLayout:Landroid/widget/RelativeLayout;

.field private backFillBannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

.field private backFillInterstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

.field private bannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

.field private connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

.field private hasTappx:Z

.field private inAppPurchaseListener:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private interstitialAdId:Ljava/lang/String;

.field private interstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

.field private isBannerAtTop:Z

.field protected isBannerAutoShow:Z

.field private isBannerOverlap:Z

.field private isBannerRequested:Z

.field private isBannerVisible:Z

.field private isGo2TappxInBannerBackfill:Z

.field private isGo2TappxInIntesrtitialBackfill:Z

.field protected isInterstitialAutoShow:Z

.field private isInterstitialAvailable:Z

.field private isInterstitialRequested:Z

.field private isNetworkActive:Z

.field private isOffsetStatusBar:Z

.field private isTesting:Z

.field private parentView:Landroid/view/ViewGroup;

.field private publisherId:Ljava/lang/String;

.field private tappxId:Ljava/lang/String;

.field private tappxShare:D


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 71
    const-string v1, "7.0.0"

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    sput-boolean v0, Lcom/appfeel/cordova/admob/AdMobAds;->CORDOVA_4:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 99
    iput-boolean v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerAutoShow:Z

    .line 100
    iput-boolean v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAutoShow:Z

    .line 102
    new-instance v0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    const-string v1, "banner"

    invoke-direct {v0, v1, p0, v2}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;-><init>(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAds;Z)V

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->bannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .line 103
    new-instance v0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    const-string v1, "interstitial"

    invoke-direct {v0, v1, p0, v2}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;-><init>(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAds;Z)V

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .line 104
    new-instance v0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    const-string v1, "banner"

    invoke-direct {v0, v1, p0, v3}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;-><init>(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAds;Z)V

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->backFillBannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .line 105
    new-instance v0, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    const-string v1, "interstitial"

    invoke-direct {v0, v1, p0, v3}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;-><init>(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAds;Z)V

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->backFillInterstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .line 106
    new-instance v0, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    invoke-direct {v0, p0}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;)V

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->inAppPurchaseListener:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    .line 107
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAvailable:Z

    .line 108
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isNetworkActive:Z

    .line 109
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerRequested:Z

    .line 110
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialRequested:Z

    .line 121
    iput-object v4, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adViewLayout:Landroid/widget/RelativeLayout;

    .line 126
    const-string v0, "ca-app-pub-8440343014846849/3119840614"

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 127
    const-string v0, "ca-app-pub-8440343014846849/4596573817"

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    .line 128
    const-string v0, "/120940746/Pub-2700-Android-8171"

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 133
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerAtTop:Z

    .line 137
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerOverlap:Z

    .line 138
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isOffsetStatusBar:Z

    .line 139
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isTesting:Z

    .line 140
    iput-object v4, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adExtras:Lorg/json/JSONObject;

    .line 141
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerVisible:Z

    .line 142
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxShare:D

    .line 143
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    .line 144
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    .line 145
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->hasTappx:Z

    return-void
.end method

.method public static DeviceInches(Landroid/content/Context;)D
    .registers 11
    .param p0, "p_context"    # Landroid/content/Context;

    .prologue
    .line 910
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 911
    .local v0, "default_value":D
    if-nez p0, :cond_5

    .line 917
    .end local v0    # "default_value":D
    :goto_4
    return-wide v0

    .line 914
    .restart local v0    # "default_value":D
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/appfeel/cordova/admob/AdMobAds;->DisplayInfo(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 915
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, v3, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v7, v3, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_29

    move-result-wide v0

    goto :goto_4

    .line 916
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    :catch_29
    move-exception v2

    .line 917
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_4
.end method

.method public static DisplayInfo(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 4
    .param p0, "p_context"    # Landroid/content/Context;

    .prologue
    .line 899
    const/4 v0, 0x0

    .line 901
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    :try_start_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_17

    .line 902
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    :try_start_6
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_19

    move-object v0, v1

    .line 906
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v0    # "metrics":Landroid/util/DisplayMetrics;
    :goto_16
    return-object v0

    .line 904
    :catch_17
    move-exception v2

    goto :goto_16

    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    :catch_19
    move-exception v2

    move-object v0, v1

    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v0    # "metrics":Landroid/util/DisplayMetrics;
    goto :goto_16
.end method

.method static synthetic access$002(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerRequested:Z

    return p1
.end method

.method static synthetic access$100(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->bannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->parentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/appfeel/cordova/admob/AdMobAds;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->parentView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialRequested:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/appfeel/cordova/admob/AdMobAds;->createInterstitialView(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdRequest;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/appfeel/cordova/admob/AdMobAds;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->inAppPurchaseListener:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/appfeel/cordova/admob/AdMobAds;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->backFillBannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/appfeel/cordova/admob/AdMobAds;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    return v0
.end method

.method static synthetic access$200(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;
    .param p3, "x3"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->createBannerView(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/appfeel/cordova/admob/AdMobAdsAdListener;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->backFillInterstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/appfeel/cordova/admob/AdMobAds;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerVisible:Z

    return v0
.end method

.method static synthetic access$302(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerVisible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/appfeel/cordova/admob/AdMobAds;Lcom/google/android/gms/ads/AdView;)Lcom/google/android/gms/ads/AdView;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Lcom/google/android/gms/ads/AdView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/appfeel/cordova/admob/AdMobAds;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerOverlap:Z

    return v0
.end method

.method static synthetic access$600(Lcom/appfeel/cordova/admob/AdMobAds;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isOffsetStatusBar:Z

    return v0
.end method

.method static synthetic access$700(Lcom/appfeel/cordova/admob/AdMobAds;)Z
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerAtTop:Z

    return v0
.end method

.method static synthetic access$800(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/appfeel/cordova/admob/AdMobAds;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/appfeel/cordova/admob/AdMobAds;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adViewLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/appfeel/cordova/admob/AdMobAds;->CORDOVA_4:Z

    return v0
.end method

.method public static adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    .registers 2
    .param p0, "size"    # Ljava/lang/String;

    .prologue
    .line 864
    const-string v0, "BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 865
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 875
    :goto_a
    return-object v0

    .line 866
    :cond_b
    const-string v0, "IAB_MRECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 867
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_a

    .line 868
    :cond_16
    const-string v0, "IAB_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 869
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_a

    .line 870
    :cond_21
    const-string v0, "IAB_LEADERBOARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 871
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_a

    .line 872
    :cond_2c
    const-string v0, "SMART_BANNER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 873
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_a

    .line 875
    :cond_37
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_a
.end method

.method private buildAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 324
    new-instance v8, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v8}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 325
    .local v8, "request_builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-boolean v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isTesting:Z

    if-eqz v9, :cond_2c

    .line 327
    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "ANDROID_ID":Ljava/lang/String;
    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "deviceId":Ljava/lang/String;
    invoke-virtual {v8, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v8

    .line 331
    .end local v0    # "ANDROID_ID":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    :cond_2c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v9, "cordova"

    invoke-virtual {v2, v9, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adExtras:Lorg/json/JSONObject;

    if-eqz v9, :cond_70

    .line 334
    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 335
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_70

    .line 336
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 338
    .local v6, "key":Ljava/lang/String;
    :try_start_4c
    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adExtras:Lorg/json/JSONObject;

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_59} :catch_5a

    goto :goto_40

    .line 339
    :catch_5a
    move-exception v4

    .line 340
    .local v4, "exception":Lorg/json/JSONException;
    const-string v9, "AdmMobAds"

    const-string v10, "Caught JSON Exception: %s"

    new-array v11, v14, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 344
    .end local v4    # "exception":Lorg/json/JSONException;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    :cond_70
    new-instance v1, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    .line 345
    .local v1, "adextras":Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;
    invoke-virtual {v8, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v8

    .line 346
    invoke-virtual {v8}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v7

    .line 347
    .local v7, "request":Lcom/google/android/gms/ads/AdRequest;
    return-object v7
.end method

.method private createBannerView(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;Z)V
    .registers 11
    .param p1, "_pid"    # Ljava/lang/String;
    .param p2, "adListener"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;
    .param p3, "isBackFill"    # Z

    .prologue
    const/16 v6, 0x300

    const/4 v5, 0x0

    .line 387
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 389
    .local v0, "isTappx":Z
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 390
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 391
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 393
    :cond_2e
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 394
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    .line 396
    :cond_36
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    if-nez v2, :cond_67

    .line 397
    new-instance v2, Lcom/google/android/gms/ads/AdView;

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    .line 398
    if-eqz v0, :cond_e9

    .line 399
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    if-ne v2, v3, :cond_88

    .line 400
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 421
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 423
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 426
    :cond_67
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 427
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    :cond_7c
    iput-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerVisible:Z

    .line 430
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/appfeel/cordova/admob/AdMobAds;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 431
    return-void

    .line 401
    :cond_88
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    if-ne v2, v3, :cond_a2

    .line 402
    invoke-direct {p0, p3, v5}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 403
    const-string v2, "ca-app-pub-8440343014846849/3119840614"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    .line 404
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_56

    .line 405
    :cond_a2
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    if-ne v2, v3, :cond_b0

    .line 406
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_56

    .line 407
    :cond_b0
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    if-ne v2, v3, :cond_be

    .line 408
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_56

    .line 409
    :cond_be
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    if-ne v2, v3, :cond_56

    .line 410
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/appfeel/cordova/admob/AdMobAds;->DisplayInfo(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 411
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v2, v6, :cond_e0

    .line 412
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x5a

    invoke-direct {v3, v6, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto/16 :goto_56

    .line 414
    :cond_e0
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto/16 :goto_56

    .line 419
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_e9
    iget-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto/16 :goto_56
.end method

.method private createInterstitialView(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;)V
    .registers 5
    .param p1, "_iid"    # Ljava/lang/String;
    .param p2, "adListener"    # Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    .prologue
    .line 624
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 625
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->inAppPurchaseListener:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    .line 627
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 628
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/appfeel/cordova/admob/AdMobAds;->buildAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 629
    return-void
.end method

.method private executeCreateBannerView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 11
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/appfeel/cordova/admob/AdMobAds;->setOptions(Lorg/json/JSONObject;)V

    .line 435
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 437
    .local v0, "__pid":Ljava/lang/String;
    :try_start_5
    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_28

    const-string v0, "ca-app-pub-8440343014846849/3119840614"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_63

    .line 441
    :goto_f
    const-string v3, "ca-app-pub-8440343014846849/3119840614"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    .line 442
    move-object v1, v0

    .line 444
    .local v1, "_pid":Ljava/lang/String;
    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/appfeel/cordova/admob/AdMobAds$1;

    invoke-direct {v4, p0, v1, p2}, Lcom/appfeel/cordova/admob/AdMobAds$1;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    const/4 v3, 0x0

    return-object v3

    .line 437
    .end local v1    # "_pid":Ljava/lang/String;
    :cond_28
    :try_start_28
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3c

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_3c
    iget-object v3, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "bid"

    const-string v6, "string"

    iget-object v7, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_61} :catch_63

    move-result-object v0

    goto :goto_f

    .line 438
    :catch_63
    move-exception v2

    .line 439
    .local v2, "ex":Ljava/lang/Exception;
    const-string v0, "ca-app-pub-8440343014846849/3119840614"

    goto :goto_f
.end method

.method private executeCreateInterstitialView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 14
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    .line 632
    invoke-direct {p0, p1}, Lcom/appfeel/cordova/admob/AdMobAds;->setOptions(Lorg/json/JSONObject;)V

    .line 633
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 634
    .local v1, "__pid":Ljava/lang/String;
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    .line 636
    .local v0, "__iid":Ljava/lang/String;
    :try_start_9
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_40

    const-string v1, "ca-app-pub-8440343014846849/3119840614"
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_7a

    .line 641
    :goto_13
    :try_start_13
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_b9

    move-result v5

    if-nez v5, :cond_7e

    move-object v0, v1

    .line 645
    :goto_1c
    const-string v5, "ca-app-pub-8440343014846849/3119840614"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "ca-app-pub-8440343014846849/4596573817"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    :cond_2d
    iput-boolean v4, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    .line 646
    move-object v2, v0

    .line 647
    .local v2, "_iid":Ljava/lang/String;
    iget-object v4, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/appfeel/cordova/admob/AdMobAds$4;

    invoke-direct {v5, p0, v2, p2}, Lcom/appfeel/cordova/admob/AdMobAds$4;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 655
    const/4 v4, 0x0

    return-object v4

    .line 636
    .end local v2    # "_iid":Ljava/lang/String;
    :cond_40
    :try_start_40
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v5, v10, :cond_53

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_53
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "bid"

    const-string v8, "string"

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_78} :catch_7a

    move-result-object v1

    goto :goto_13

    .line 637
    :catch_7a
    move-exception v3

    .line 638
    .local v3, "ex":Ljava/lang/Exception;
    const-string v1, "ca-app-pub-8440343014846849/3119840614"

    goto :goto_13

    .line 641
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_7e
    :try_start_7e
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v5, v10, :cond_91

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/appfeel/cordova/admob/AdMobAds;->getInterstitialId(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_91
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "iid"

    const-string v8, "string"

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b6} :catch_b9

    move-result-object v0

    goto/16 :goto_1c

    .line 642
    :catch_b9
    move-exception v3

    .line 643
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v0, "ca-app-pub-8440343014846849/4596573817"

    goto/16 :goto_1c
.end method

.method private executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 5
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 570
    const-string v1, "AdmMobAds"

    const-string v2, "executeDestroyBannerView"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object v0, p1

    .line 572
    .local v0, "delayCallback":Lorg/apache/cordova/CallbackContext;
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/appfeel/cordova/admob/AdMobAds$3;

    invoke-direct {v2, p0, v0}, Lcom/appfeel/cordova/admob/AdMobAds$3;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 588
    const/4 v1, 0x0

    return-object v1
.end method

.method private executeRecordPlayBillingResolution(IILorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 11
    .param p1, "purchaseId"    # I
    .param p2, "billingResponseCode"    # I
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->inAppPurchaseListener:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    invoke-virtual {v0, p1}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->getPurchase(I)Lcom/google/android/gms/ads/purchase/InAppPurchase;

    move-result-object v2

    .line 729
    .local v2, "purchase":Lcom/google/android/gms/ads/purchase/InAppPurchase;
    if-eqz v2, :cond_1c

    .line 730
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/appfeel/cordova/admob/AdMobAds$8;

    move-object v1, p0

    move v3, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/appfeel/cordova/admob/AdMobAds$8;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Lcom/google/android/gms/ads/purchase/InAppPurchase;IILorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0

    .line 742
    :cond_1c
    if-eqz p3, :cond_1a

    .line 743
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_1a
.end method

.method private executeRecordResolution(IILorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 11
    .param p1, "purchaseId"    # I
    .param p2, "resolution"    # I
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->inAppPurchaseListener:Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;

    invoke-virtual {v0, p1}, Lcom/appfeel/cordova/admob/AdMobAdsAppPurchaseListener;->getPurchase(I)Lcom/google/android/gms/ads/purchase/InAppPurchase;

    move-result-object v2

    .line 706
    .local v2, "purchase":Lcom/google/android/gms/ads/purchase/InAppPurchase;
    if-eqz v2, :cond_1c

    .line 707
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/appfeel/cordova/admob/AdMobAds$7;

    move-object v1, p0

    move v3, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/appfeel/cordova/admob/AdMobAds$7;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Lcom/google/android/gms/ads/purchase/InAppPurchase;IILorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 724
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0

    .line 720
    :cond_1c
    if-eqz p3, :cond_1a

    .line 721
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_1a
.end method

.method private executeRequestInterstitialAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 5
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAvailable:Z

    if-eqz v0, :cond_e

    .line 660
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-virtual {v0}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->onAdLoaded()V

    .line 661
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 678
    :goto_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 664
    :cond_e
    invoke-direct {p0, p1}, Lcom/appfeel/cordova/admob/AdMobAds;->setOptions(Lorg/json/JSONObject;)V

    .line 665
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_1a

    .line 666
    invoke-direct {p0, p1, p2}, Lcom/appfeel/cordova/admob/AdMobAds;->executeCreateInterstitialView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    goto :goto_d

    .line 669
    :cond_1a
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAds$5;

    invoke-direct {v1, p0, p2}, Lcom/appfeel/cordova/admob/AdMobAds$5;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method private executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 5
    .param p1, "options"    # Lorg/json/JSONObject;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 272
    const-string v0, "AdmMobAds"

    const-string v1, "executeSetOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, p1}, Lcom/appfeel/cordova/admob/AdMobAds;->setOptions(Lorg/json/JSONObject;)V

    .line 274
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method private executeShowBannerAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 6
    .param p1, "show"    # Z
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_e

    .line 465
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "adView is null, call createBannerView first."

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 566
    :goto_d
    return-object v0

    .line 468
    :cond_e
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAds$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/appfeel/cordova/admob/AdMobAds$2;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;ZLorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 566
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private executeShowInterstitialAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 3
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lcom/appfeel/cordova/admob/AdMobAds;->showInterstitialAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    return-object v0
.end method

.method private getInterstitialId(Z)Ljava/lang/String;
    .registers 10
    .param p1, "isBackFill"    # Z

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    .line 592
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    .line 594
    .local v0, "_interstitialAdId":Ljava/lang/String;
    if-nez p1, :cond_2e

    iget-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->hasTappx:Z

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-wide v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxShare:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-gt v1, v2, :cond_2e

    .line 595
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    .line 596
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    .line 620
    :cond_2a
    :goto_2a
    return-object v0

    .line 598
    :cond_2b
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_2a

    .line 600
    :cond_2e
    if-eqz p1, :cond_5e

    iget-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->hasTappx:Z

    if-eqz v1, :cond_5e

    .line 601
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_52

    .line 602
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 603
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    goto :goto_2a

    .line 605
    :cond_4f
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_2a

    .line 607
    :cond_52
    iget-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    if-nez v1, :cond_5b

    .line 608
    const-string v0, "ca-app-pub-8440343014846849/4596573817"

    .line 609
    iput-boolean v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    goto :goto_2a

    .line 611
    :cond_5b
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_2a

    .line 613
    :cond_5e
    if-eqz p1, :cond_69

    iget-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    if-nez v1, :cond_69

    .line 614
    const-string v0, "ca-app-pub-8440343014846849/4596573817"

    .line 615
    iput-boolean v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    goto :goto_2a

    .line 616
    :cond_69
    if-eqz p1, :cond_2a

    .line 617
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_2a
.end method

.method private getPublisherId(Z)Ljava/lang/String;
    .registers 3
    .param p1, "isBackFill"    # Z

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->hasTappx:Z

    invoke-direct {p0, p1, v0}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPublisherId(ZZ)Ljava/lang/String;
    .registers 11
    .param p1, "isBackFill"    # Z
    .param p2, "hasTappx"    # Z

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    .line 355
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 357
    .local v0, "_publisherId":Ljava/lang/String;
    if-nez p1, :cond_2c

    if-eqz p2, :cond_2c

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-wide v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxShare:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-gt v1, v2, :cond_2c

    .line 358
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 359
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    .line 383
    :cond_28
    :goto_28
    return-object v0

    .line 361
    :cond_29
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_28

    .line 363
    :cond_2c
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    .line 364
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4e

    .line 365
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 366
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    goto :goto_28

    .line 368
    :cond_4b
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_28

    .line 370
    :cond_4e
    iget-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    if-nez v1, :cond_57

    .line 371
    const-string v0, "ca-app-pub-8440343014846849/3119840614"

    .line 372
    iput-boolean v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    goto :goto_28

    .line 374
    :cond_57
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_28

    .line 376
    :cond_5a
    if-eqz p1, :cond_65

    iget-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    if-nez v1, :cond_65

    .line 377
    const-string v0, "ca-app-pub-8440343014846849/3119840614"

    .line 378
    iput-boolean v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    goto :goto_28

    .line 379
    :cond_65
    if-eqz p1, :cond_28

    .line 380
    const-string v0, "/120940746/Pub-2700-Android-8171"

    goto :goto_28
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 881
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 882
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 883
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 884
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v2, "hexString":Ljava/lang/StringBuilder;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v6, :cond_43

    aget-byte v3, v4, v5

    .line 886
    .local v3, "i":B
    and-int/lit16 v7, v3, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, "h":Ljava/lang/String;
    :goto_22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_3d

    .line 888
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 890
    :cond_3d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 892
    .end local v1    # "h":Ljava/lang/String;
    .end local v3    # "i":B
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_46
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_46} :catch_48

    move-result-object v5

    .line 895
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuilder;
    .end local v4    # "messageDigest":[B
    :goto_47
    return-object v5

    .line 893
    :catch_48
    move-exception v5

    .line 895
    const-string v5, ""

    goto :goto_47
.end method

.method private setOptions(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 279
    if-nez p1, :cond_4

    .line 320
    :cond_3
    :goto_3
    return-void

    .line 282
    :cond_4
    const-string v0, "publisherId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 283
    const-string v0, "publisherId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 285
    :cond_14
    const-string v0, "interstitialAdId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 286
    const-string v0, "interstitialAdId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    .line 288
    :cond_24
    const-string v0, "adSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 289
    const-string v0, "adSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appfeel/cordova/admob/AdMobAds;->adSizeFromString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adSize:Lcom/google/android/gms/ads/AdSize;

    .line 291
    :cond_38
    const-string v0, "bannerAtTop"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 292
    const-string v0, "bannerAtTop"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerAtTop:Z

    .line 294
    :cond_48
    const-string v0, "overlap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 295
    const-string v0, "overlap"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerOverlap:Z

    .line 297
    :cond_58
    const-string v0, "offsetStatusBar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 298
    const-string v0, "offsetStatusBar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isOffsetStatusBar:Z

    .line 300
    :cond_68
    const-string v0, "isTesting"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 301
    const-string v0, "isTesting"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isTesting:Z

    .line 303
    :cond_78
    const-string v0, "adExtras"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 304
    const-string v0, "adExtras"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adExtras:Lorg/json/JSONObject;

    .line 306
    :cond_88
    const-string v0, "autoShowBanner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 307
    const-string v0, "autoShowBanner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerAutoShow:Z

    .line 309
    :cond_98
    const-string v0, "autoShowInterstitial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 310
    const-string v0, "autoShowInterstitial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAutoShow:Z

    .line 312
    :cond_a8
    const-string v0, "tappxIdAndroid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 313
    const-string v0, "tappxIdAndroid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxId:Ljava/lang/String;

    .line 314
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->hasTappx:Z

    .line 316
    :cond_ba
    const-string v0, "tappxShare"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    const-string v0, "tappxShare"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->tappxShare:D

    .line 318
    iput-boolean v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->hasTappx:Z

    goto/16 :goto_3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    const/4 v4, 0x0

    .line 172
    .local v4, "result":Lorg/apache/cordova/PluginResult;
    const-string v8, "setOptions"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 173
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 174
    .local v1, "options":Lorg/json/JSONObject;
    invoke-direct {p0, v1, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    .line 209
    .end local v1    # "options":Lorg/json/JSONObject;
    :goto_13
    if-eqz v4, :cond_18

    .line 210
    invoke-virtual {p3, v4}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_18
    move v6, v7

    .line 213
    :goto_19
    return v6

    .line 176
    :cond_1a
    const-string v8, "createBannerView"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 177
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 178
    .restart local v1    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v1, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeCreateBannerView(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    .line 180
    goto :goto_13

    .end local v1    # "options":Lorg/json/JSONObject;
    :cond_2b
    const-string v8, "showBannerAd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 181
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v5

    .line 182
    .local v5, "show":Z
    invoke-direct {p0, v5, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeShowBannerAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    .line 184
    goto :goto_13

    .end local v5    # "show":Z
    :cond_3c
    const-string v8, "destroyBannerView"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 185
    invoke-direct {p0, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeDestroyBannerView(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    goto :goto_13

    .line 187
    :cond_49
    const-string v8, "requestInterstitialAd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 188
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 189
    .restart local v1    # "options":Lorg/json/JSONObject;
    invoke-direct {p0, v1, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeRequestInterstitialAd(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    .line 191
    goto :goto_13

    .end local v1    # "options":Lorg/json/JSONObject;
    :cond_5a
    const-string v8, "showInterstitialAd"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 192
    invoke-direct {p0, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeShowInterstitialAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    goto :goto_13

    .line 194
    :cond_67
    const-string v8, "recordResolution"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 195
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 196
    .local v2, "purchaseId":I
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 197
    .local v3, "resolution":I
    invoke-direct {p0, v2, v3, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeRecordResolution(IILorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    .line 199
    goto :goto_13

    .end local v2    # "purchaseId":I
    .end local v3    # "resolution":I
    :cond_7c
    const-string v8, "recordPlayBillingResolution"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 200
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 201
    .restart local v2    # "purchaseId":I
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 202
    .local v0, "billingResponseCode":I
    invoke-direct {p0, v2, v0, p3}, Lcom/appfeel/cordova/admob/AdMobAds;->executeRecordPlayBillingResolution(IILorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object v4

    .line 204
    goto :goto_13

    .line 205
    .end local v0    # "billingResponseCode":I
    .end local v2    # "purchaseId":I
    :cond_91
    const-string v8, "AdmMobAds"

    const-string v9, "Invalid action passed: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .registers 4
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 150
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appfeel/cordova/connectivity/Connectivity;->GetInstance(Landroid/app/Activity;Lcom/appfeel/cordova/connectivity/Connectivity$IConnectivityChange;)Lcom/appfeel/cordova/connectivity/Connectivity;

    move-result-object v0

    iput-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    .line 151
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/appfeel/cordova/connectivity/Connectivity;->observeInternetConnection()V

    .line 152
    return-void
.end method

.method public onAdLoaded(Ljava/lang/String;)V
    .registers 5
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 252
    const-string v0, "interstitial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 253
    iput-boolean v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAvailable:Z

    .line 254
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAutoShow:Z

    if-eqz v0, :cond_13

    .line 255
    invoke-virtual {p0, v2}, Lcom/appfeel/cordova/admob/AdMobAds;->showInterstitialAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    .line 263
    :cond_13
    :goto_13
    return-void

    .line 257
    :cond_14
    const-string v0, "banner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 258
    iget-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerAutoShow:Z

    if-eqz v0, :cond_13

    .line 259
    invoke-direct {p0, v1, v2}, Lcom/appfeel/cordova/admob/AdMobAds;->executeShowBannerAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    .line 260
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->bannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-virtual {v0}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->onAdOpened()V

    goto :goto_13
.end method

.method public onAdOpened(Ljava/lang/String;)V
    .registers 3
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v0, "interstitial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAvailable:Z

    .line 269
    :cond_b
    return-void
.end method

.method public onConnectivityChanged(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 16
    .param p1, "interfaceType"    # Ljava/lang/String;
    .param p2, "isConnected"    # Z
    .param p3, "observer"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 801
    if-nez p2, :cond_7

    .line 802
    iput-boolean v10, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isNetworkActive:Z

    .line 855
    :cond_6
    :goto_6
    return-void

    .line 803
    :cond_7
    iget-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isNetworkActive:Z

    if-nez v5, :cond_6

    .line 804
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isNetworkActive:Z

    .line 806
    iget-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isBannerRequested:Z

    if-eqz v5, :cond_24

    .line 807
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 809
    .local v1, "__pid":Ljava/lang/String;
    :try_start_14
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_32

    const-string v1, "ca-app-pub-8440343014846849/3119840614"
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_6c

    .line 813
    :goto_1e
    move-object v3, v1

    .line 814
    .local v3, "_pid":Ljava/lang/String;
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->bannerListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-direct {p0, v3, v5, v10}, Lcom/appfeel/cordova/admob/AdMobAds;->createBannerView(Ljava/lang/String;Lcom/appfeel/cordova/admob/AdMobAdsAdListener;Z)V

    .line 817
    .end local v1    # "__pid":Ljava/lang/String;
    .end local v3    # "_pid":Ljava/lang/String;
    :cond_24
    iget-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialRequested:Z

    if-eqz v5, :cond_6

    .line 818
    iget-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isInterstitialAvailable:Z

    if-eqz v5, :cond_70

    .line 819
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialListener:Lcom/appfeel/cordova/admob/AdMobAdsAdListener;

    invoke-virtual {v5}, Lcom/appfeel/cordova/admob/AdMobAdsAdListener;->onAdLoaded()V

    goto :goto_6

    .line 809
    .restart local v1    # "__pid":Ljava/lang/String;
    :cond_32
    :try_start_32
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v5, v11, :cond_45

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_45
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "bid"

    const-string v8, "string"

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6a} :catch_6c

    move-result-object v1

    goto :goto_1e

    .line 810
    :catch_6c
    move-exception v4

    .line 811
    .local v4, "ex":Ljava/lang/Exception;
    const-string v1, "ca-app-pub-8440343014846849/3119840614"

    goto :goto_1e

    .line 822
    .end local v1    # "__pid":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_70
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v5, :cond_11a

    .line 823
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 824
    .restart local v1    # "__pid":Ljava/lang/String;
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    .line 826
    .local v0, "__iid":Ljava/lang/String;
    :try_start_78
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9c

    const-string v1, "ca-app-pub-8440343014846849/3119840614"
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_d6

    .line 831
    :goto_82
    :try_start_82
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_115

    move-result v5

    if-nez v5, :cond_da

    move-object v0, v1

    .line 835
    :goto_8b
    move-object v2, v0

    .line 836
    .local v2, "_iid":Ljava/lang/String;
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/appfeel/cordova/admob/AdMobAds$11;

    invoke-direct {v6, p0, v2}, Lcom/appfeel/cordova/admob/AdMobAds$11;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 826
    .end local v2    # "_iid":Ljava/lang/String;
    :cond_9c
    :try_start_9c
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v5, v11, :cond_af

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_82

    :cond_af
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "bid"

    const-string v8, "string"

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_d4} :catch_d6

    move-result-object v1

    goto :goto_82

    .line 827
    :catch_d6
    move-exception v4

    .line 828
    .restart local v4    # "ex":Ljava/lang/Exception;
    const-string v1, "ca-app-pub-8440343014846849/3119840614"

    goto :goto_82

    .line 831
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_da
    :try_start_da
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v5, v11, :cond_ed

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/appfeel/cordova/admob/AdMobAds;->getInterstitialId(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_8b

    :cond_ed
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "iid"

    const-string v8, "string"

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_112} :catch_115

    move-result-object v0

    goto/16 :goto_8b

    .line 832
    :catch_115
    move-exception v4

    .line 833
    .restart local v4    # "ex":Ljava/lang/Exception;
    const-string v0, "ca-app-pub-8440343014846849/3119840614"

    goto/16 :goto_8b

    .line 845
    .end local v0    # "__iid":Ljava/lang/String;
    .end local v1    # "__pid":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_11a
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/appfeel/cordova/admob/AdMobAds$12;

    invoke-direct {v6, p0}, Lcom/appfeel/cordova/admob/AdMobAds$12;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_6
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_c

    .line 237
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 238
    iput-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    .line 240
    :cond_c
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_21

    .line 241
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 242
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1f

    .line 243
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    :cond_1f
    iput-object v2, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adViewLayout:Landroid/widget/RelativeLayout;

    .line 247
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_21
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/appfeel/cordova/connectivity/Connectivity;->stopAllObservers(Z)V

    .line 248
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 249
    return-void
.end method

.method public onPause(Z)V
    .registers 4
    .param p1, "multitasking"    # Z

    .prologue
    .line 218
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 219
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_c

    .line 220
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 222
    :cond_c
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appfeel/cordova/connectivity/Connectivity;->stopAllObservers(Z)V

    .line 223
    return-void
.end method

.method public onResume(Z)V
    .registers 3
    .param p1, "multitasking"    # Z

    .prologue
    .line 227
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 228
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_c

    .line 229
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 231
    :cond_c
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->connectivity:Lcom/appfeel/cordova/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/appfeel/cordova/connectivity/Connectivity;->observeInternetConnection()V

    .line 232
    return-void
.end method

.method protected showInterstitialAd(Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .registers 5
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_e

    .line 687
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "interstitialAd is null, call createInterstitialView first."

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 701
    :goto_d
    return-object v0

    .line 689
    :cond_e
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/appfeel/cordova/admob/AdMobAds$6;

    invoke-direct {v1, p0, p1}, Lcom/appfeel/cordova/admob/AdMobAds$6;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 701
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public tryBackfill(Ljava/lang/String;)V
    .registers 14
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    .line 750
    const-string v6, "banner"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 751
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 753
    .local v1, "__pid":Ljava/lang/String;
    :try_start_c
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2e

    const-string v1, "ca-app-pub-8440343014846849/3119840614"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_68

    .line 757
    :goto_16
    const-string v5, "ca-app-pub-8440343014846849/3119840614"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInBannerBackfill:Z

    .line 758
    move-object v3, v1

    .line 760
    .local v3, "_pid":Ljava/lang/String;
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/appfeel/cordova/admob/AdMobAds$9;

    invoke-direct {v6, p0, v3}, Lcom/appfeel/cordova/admob/AdMobAds$9;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 797
    .end local v1    # "__pid":Ljava/lang/String;
    .end local v3    # "_pid":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void

    .line 753
    .restart local v1    # "__pid":Ljava/lang/String;
    :cond_2e
    :try_start_2e
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v5, v11, :cond_41

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_41
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "bid"

    const-string v8, "string"

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_66} :catch_68

    move-result-object v1

    goto :goto_16

    .line 754
    :catch_68
    move-exception v4

    .line 755
    .local v4, "ex":Ljava/lang/Exception;
    const-string v1, "ca-app-pub-8440343014846849/3119840614"

    goto :goto_16

    .line 771
    .end local v1    # "__pid":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_6c
    const-string v6, "interstitial"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 772
    iget-object v1, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    .line 773
    .restart local v1    # "__pid":Ljava/lang/String;
    iget-object v0, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    .line 775
    .local v0, "__iid":Ljava/lang/String;
    :try_start_78
    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->publisherId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_ad

    const-string v1, "ca-app-pub-8440343014846849/3119840614"
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_e7

    .line 780
    :goto_82
    :try_start_82
    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->interstitialAdId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_126

    move-result v6

    if-nez v6, :cond_eb

    move-object v0, v1

    .line 784
    :goto_8b
    const-string v6, "ca-app-pub-8440343014846849/3119840614"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    const-string v6, "ca-app-pub-8440343014846849/4596573817"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    :cond_9b
    :goto_9b
    iput-boolean v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->isGo2TappxInIntesrtitialBackfill:Z

    .line 785
    move-object v2, v0

    .line 786
    .local v2, "_iid":Ljava/lang/String;
    iget-object v5, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/appfeel/cordova/admob/AdMobAds$10;

    invoke-direct {v6, p0, v2}, Lcom/appfeel/cordova/admob/AdMobAds$10;-><init>(Lcom/appfeel/cordova/admob/AdMobAds;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2d

    .line 775
    .end local v2    # "_iid":Ljava/lang/String;
    :cond_ad
    :try_start_ad
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-le v6, v11, :cond_c0

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/appfeel/cordova/admob/AdMobAds;->getPublisherId(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_82

    :cond_c0
    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "bid"

    const-string v9, "string"

    iget-object v10, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_e5} :catch_e7

    move-result-object v1

    goto :goto_82

    .line 776
    :catch_e7
    move-exception v4

    .line 777
    .restart local v4    # "ex":Ljava/lang/Exception;
    const-string v1, "ca-app-pub-8440343014846849/3119840614"

    goto :goto_82

    .line 780
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_eb
    :try_start_eb
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-le v6, v11, :cond_fe

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/appfeel/cordova/admob/AdMobAds;->getInterstitialId(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_8b

    :cond_fe
    iget-object v6, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "iid"

    const-string v9, "string"

    iget-object v10, p0, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_123} :catch_126

    move-result-object v0

    goto/16 :goto_8b

    .line 781
    :catch_126
    move-exception v4

    .line 782
    .restart local v4    # "ex":Ljava/lang/Exception;
    const-string v0, "ca-app-pub-8440343014846849/3119840614"

    goto/16 :goto_8b

    .line 784
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_12b
    const/4 v5, 0x0

    goto/16 :goto_9b
.end method
