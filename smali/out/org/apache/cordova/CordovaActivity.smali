.class public Lorg/apache/cordova/CordovaActivity;
.super Landroid/app/Activity;
.source "CordovaActivity.java"


# static fields
.field private static ACTIVITY_EXITING:I

.field private static ACTIVITY_RUNNING:I

.field private static ACTIVITY_STARTING:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field protected appView:Lorg/apache/cordova/CordovaWebView;

.field protected cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

.field protected immersiveMode:Z

.field protected keepRunning:Z

.field protected launchUrl:Ljava/lang/String;

.field protected pluginEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/PluginEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected preferences:Lorg/apache/cordova/CordovaPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "CordovaActivity"

    sput-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_STARTING:I

    .line 84
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_RUNNING:I

    .line 85
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_EXITING:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    return-void
.end method


# virtual methods
.method protected createViews()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 175
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 176
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/cordova/CordovaActivity;->setContentView(Landroid/view/View;)V

    .line 182
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v3, "BackgroundColor"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CordovaPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 184
    :try_start_2d
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v3, "BackgroundColor"

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v3, v4}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, "backgroundColor":I
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_40} :catch_4a

    .line 193
    .end local v0    # "backgroundColor":I
    :cond_40
    :goto_40
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 194
    return-void

    .line 188
    :catch_4a
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method public displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "button"    # Ljava/lang/String;
    .param p4, "exit"    # Z

    .prologue
    .line 401
    move-object v2, p0

    .line 402
    .local v2, "me":Lorg/apache/cordova/CordovaActivity;
    new-instance v0, Lorg/apache/cordova/CordovaActivity$4;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/CordovaActivity$4;-><init>(Lorg/apache/cordova/CordovaActivity;Lorg/apache/cordova/CordovaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CordovaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method protected init()V
    .registers 6

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->makeWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    .line 147
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->createViews()V

    .line 148
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 149
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->pluginEntries:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/cordova/CordovaWebView;->init(Lorg/apache/cordova/CordovaInterface;Ljava/util/List;Lorg/apache/cordova/CordovaPreferences;)V

    .line 151
    :cond_1c
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaInterfaceImpl;->onCordovaInit(Lorg/apache/cordova/PluginManager;)V

    .line 154
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "DefaultVolumeStream"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "volumePref":Ljava/lang/String;
    const-string v1, "media"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 156
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaActivity;->setVolumeControlStream(I)V

    .line 158
    :cond_43
    return-void
.end method

.method protected loadConfig()V
    .registers 4

    .prologue
    .line 162
    new-instance v0, Lorg/apache/cordova/ConfigXmlParser;

    invoke-direct {v0}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    .line 163
    .local v0, "parser":Lorg/apache/cordova/ConfigXmlParser;
    invoke-virtual {v0, p0}, Lorg/apache/cordova/ConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 165
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaPreferences;->setPreferencesBundle(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getLaunchUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaActivity;->launchUrl:Ljava/lang/String;

    .line 167
    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getPluginEntries()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaActivity;->pluginEntries:Ljava/util/ArrayList;

    .line 168
    sput-object v0, Lorg/apache/cordova/Config;->parser:Lorg/apache/cordova/ConfigXmlParser;

    .line 169
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_8

    .line 224
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->init()V

    .line 228
    :cond_8
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "KeepRunning"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    .line 230
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0, p1, v2}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;Z)V

    .line 231
    return-void
.end method

.method protected makeCordovaInterface()Lorg/apache/cordova/CordovaInterfaceImpl;
    .registers 2

    .prologue
    .line 210
    new-instance v0, Lorg/apache/cordova/CordovaActivity$1;

    invoke-direct {v0, p0, p0}, Lorg/apache/cordova/CordovaActivity$1;-><init>(Lorg/apache/cordova/CordovaActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected makeWebView()Lorg/apache/cordova/CordovaWebView;
    .registers 3

    .prologue
    .line 202
    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->makeWebViewEngine()Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/cordova/CordovaWebViewImpl;-><init>(Lorg/apache/cordova/CordovaWebViewEngine;)V

    return-object v0
.end method

.method protected makeWebViewEngine()Lorg/apache/cordova/CordovaWebViewEngine;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    invoke-static {p0, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->createEngine(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming Result. Request code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 359
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/CordovaInterfaceImpl;->onActivityResult(IILandroid/content/Intent;)Z

    .line 360
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 488
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v1, :cond_8

    .line 495
    :cond_7
    :goto_7
    return-void

    .line 491
    :cond_8
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v0

    .line 492
    .local v0, "pm":Lorg/apache/cordova/PluginManager;
    if-eqz v0, :cond_7

    .line 493
    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x800

    const/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->loadConfig()V

    .line 109
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "loglevel"

    const-string v3, "ERROR"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "logLevel":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/cordova/LOG;->setLogLevel(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v2, "Apache Cordova native platform version 7.0.0 is starting"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v2, "CordovaActivity.onCreate()"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "ShowTitle"

    invoke-virtual {v1, v2, v4}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_35

    .line 116
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    :cond_35
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "SetFullscreen"

    invoke-virtual {v1, v2, v4}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 120
    sget-object v1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v2, "The SetFullscreen configuration is deprecated in favor of Fullscreen, and will be removed in a future version."

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "Fullscreen"

    invoke-virtual {v1, v2, v5}, Lorg/apache/cordova/CordovaPreferences;->set(Ljava/lang/String;Z)V

    .line 123
    :cond_4d
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "Fullscreen"

    invoke-virtual {v1, v2, v4}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_7a

    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "FullscreenNotImmersive"

    invoke-virtual {v1, v2, v4}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 127
    iput-boolean v5, p0, Lorg/apache/cordova/CordovaActivity;->immersiveMode:Z

    .line 137
    :goto_69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->makeCordovaInterface()Lorg/apache/cordova/CordovaInterfaceImpl;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    .line 140
    if-eqz p1, :cond_79

    .line 141
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    invoke-virtual {v1, p1}, Lorg/apache/cordova/CordovaInterfaceImpl;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 143
    :cond_79
    return-void

    .line 129
    :cond_7a
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    goto :goto_69

    .line 133
    :cond_82
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setFlags(II)V

    goto :goto_69
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 432
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_f

    .line 433
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v0

    const-string v1, "onCreateOptionsMenu"

    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_f
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 311
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "CordovaActivity.onDestroy()"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_13

    .line 315
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->handleDestroy()V

    .line 317
    :cond_13
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 462
    const-string v2, "onReceivedError"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object v0, p2

    .line 463
    check-cast v0, Lorg/json/JSONObject;

    .line 465
    .local v0, "d":Lorg/json/JSONObject;
    :try_start_b
    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "description"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/cordova/CordovaActivity;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_20} :catch_22

    .line 472
    .end local v0    # "d":Lorg/json/JSONObject;
    :cond_20
    :goto_20
    const/4 v2, 0x0

    return-object v2

    .line 466
    .restart local v0    # "d":Lorg/json/JSONObject;
    :catch_22
    move-exception v1

    .line 467
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 469
    .end local v0    # "d":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_27
    const-string v2, "exit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 470
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->finish()V

    goto :goto_20
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 256
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_c

    .line 257
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebView;->onNewIntent(Landroid/content/Intent;)V

    .line 258
    :cond_c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_f

    .line 449
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v0

    const-string v1, "onOptionsItemSelected"

    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 239
    sget-object v1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v2, "Paused the activity."

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v1, :cond_1e

    .line 244
    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    iget-object v1, v1, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/CordovaPlugin;

    if-eqz v1, :cond_1f

    :cond_18
    const/4 v0, 0x1

    .line 245
    .local v0, "keepRunning":Z
    :goto_19
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1, v0}, Lorg/apache/cordova/CordovaWebView;->handlePause(Z)V

    .line 247
    .end local v0    # "keepRunning":Z
    :cond_1e
    return-void

    .line 244
    :cond_1f
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_f

    .line 441
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v0

    const-string v1, "onPrepareOptionsMenu"

    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 371
    move-object v3, p0

    .line 374
    .local v3, "me":Lorg/apache/cordova/CordovaActivity;
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "errorUrl"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "errorUrl":Ljava/lang/String;
    if-eqz v6, :cond_1f

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1f

    .line 377
    new-instance v0, Lorg/apache/cordova/CordovaActivity$2;

    invoke-direct {v0, p0, v3, v6}, Lorg/apache/cordova/CordovaActivity$2;-><init>(Lorg/apache/cordova/CordovaActivity;Lorg/apache/cordova/CordovaActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CordovaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    :goto_1e
    return-void

    .line 385
    :cond_1f
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2f

    const/4 v2, 0x1

    .line 386
    .local v2, "exit":Z
    :goto_23
    new-instance v0, Lorg/apache/cordova/CordovaActivity$3;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/CordovaActivity$3;-><init>(Lorg/apache/cordova/CordovaActivity;ZLorg/apache/cordova/CordovaActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CordovaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 385
    .end local v2    # "exit":Z
    :cond_2f
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 509
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/cordova/CordovaInterfaceImpl;->onRequestPermissionResult(I[Ljava/lang/String;[I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 517
    :goto_5
    return-void

    .line 511
    :catch_6
    move-exception v0

    .line 513
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v2, "JSONException: Parameters fed into the method are not valid"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 266
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Resumed the activity."

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_f

    .line 276
    :goto_e
    return-void

    .line 273
    :cond_f
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 275
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->handleResume(Z)V

    goto :goto_e
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaInterfaceImpl;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 477
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 298
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Started the activity."

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_f

    .line 304
    :goto_e
    return-void

    .line 303
    :cond_f
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->handleStart()V

    goto :goto_e
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 284
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Stopped the activity."

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_f

    .line 290
    :goto_e
    return-void

    .line 289
    :cond_f
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->handleStop()V

    goto :goto_e
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 326
    if-eqz p1, :cond_18

    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->immersiveMode:Z

    if-eqz v1, :cond_18

    .line 327
    const/16 v0, 0x1706

    .line 334
    .local v0, "uiOptions":I
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1706

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 336
    .end local v0    # "uiOptions":I
    :cond_18
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->cordovaInterface:Lorg/apache/cordova/CordovaInterfaceImpl;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/CordovaInterfaceImpl;->setActivityResultRequestCode(I)V

    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 344
    return-void
.end method
