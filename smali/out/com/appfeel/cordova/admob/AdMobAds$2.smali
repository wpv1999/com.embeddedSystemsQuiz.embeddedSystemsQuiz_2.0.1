.class Lcom/appfeel/cordova/admob/AdMobAds$2;
.super Ljava/lang/Object;
.source "AdMobAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appfeel/cordova/admob/AdMobAds;->executeShowBannerAd(ZLorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appfeel/cordova/admob/AdMobAds;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/appfeel/cordova/admob/AdMobAds;ZLorg/apache/cordova/CallbackContext;)V
    .registers 4
    .param p1, "this$0"    # Lcom/appfeel/cordova/admob/AdMobAds;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iput-boolean p2, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->val$show:Z

    iput-object p3, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const v10, 0x1020002

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 471
    iget-boolean v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->val$show:Z

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$300(Lcom/appfeel/cordova/admob/AdMobAds;)Z

    move-result v9

    if-ne v8, v9, :cond_1a

    .line 561
    :goto_10
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v8, :cond_19

    .line 562
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v8}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 564
    :cond_19
    return-void

    .line 474
    :cond_1a
    iget-boolean v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->val$show:Z

    if-eqz v8, :cond_203

    .line 475
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_3f

    .line 476
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    :cond_3f
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$500(Lcom/appfeel/cordova/admob/AdMobAds;)Z

    move-result v8

    if-eqz v8, :cond_125

    .line 480
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 482
    .local v3, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$600(Lcom/appfeel/cordova/admob/AdMobAds;)Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 483
    const/4 v5, 0x0

    .line 484
    .local v5, "titleBarHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 485
    .local v4, "rectangle":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 486
    .local v6, "window":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 488
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$700(Lcom/appfeel/cordova/admob/AdMobAds;)Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 489
    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_86

    .line 490
    invoke-virtual {v6, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v1

    .line 491
    .local v1, "contentViewTop":I
    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v8

    .line 493
    .end local v1    # "contentViewTop":I
    :cond_86
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 510
    .end local v4    # "rectangle":Landroid/graphics/Rect;
    .end local v5    # "titleBarHeight":I
    .end local v6    # "window":Landroid/view/Window;
    :goto_88
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$800(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_c4

    .line 511
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    new-instance v9, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v10, v10, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$802(Lcom/appfeel/cordova/admob/AdMobAds;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 512
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 513
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/appfeel/cordova/admob/AdMobAds;->access$900()Z

    move-result v8

    if-eqz v8, :cond_115

    .line 514
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$800(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_c4
    :goto_c4
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$800(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/widget/RelativeLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$800(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 553
    .end local v3    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_dc
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 554
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8, v13}, Lcom/appfeel/cordova/admob/AdMobAds;->access$302(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z

    goto/16 :goto_10

    .line 496
    .restart local v3    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "rectangle":Landroid/graphics/Rect;
    .restart local v5    # "titleBarHeight":I
    .restart local v6    # "window":Landroid/view/Window;
    :cond_ec
    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_fc

    .line 497
    invoke-virtual {v6, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 498
    .local v0, "contentViewBottom":I
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v8

    .line 500
    .end local v0    # "contentViewBottom":I
    :cond_fc
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_88

    .line 503
    .end local v4    # "rectangle":Landroid/graphics/Rect;
    .end local v5    # "titleBarHeight":I
    .end local v6    # "window":Landroid/view/Window;
    :cond_ff
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$700(Lcom/appfeel/cordova/admob/AdMobAds;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 504
    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_88

    .line 507
    :cond_10e
    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_88

    .line 516
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_115
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$800(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c4

    .line 523
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "params2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_125
    invoke-static {}, Lcom/appfeel/cordova/admob/AdMobAds;->access$900()Z

    move-result v8

    if-eqz v8, :cond_1e1

    .line 524
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 526
    .local v7, "wvParentView":Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    if-nez v8, :cond_153

    .line 527
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v10, v10, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1002(Lcom/appfeel/cordova/admob/AdMobAds;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 530
    :cond_153
    if-eqz v7, :cond_1b6

    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    if-eq v7, v8, :cond_1b6

    .line 531
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 532
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 533
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    invoke-direct {v9, v11, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v11, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v9, v9, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 543
    .end local v7    # "wvParentView":Landroid/view/ViewGroup;
    :cond_1b6
    :goto_1b6
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$700(Lcom/appfeel/cordova/admob/AdMobAds;)Z

    move-result v8

    if-eqz v8, :cond_1f3

    .line 544
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v9

    invoke-virtual {v8, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 548
    :goto_1cd
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->bringToFront()V

    .line 549
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_dc

    .line 540
    :cond_1e1
    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    iget-object v8, v8, Lcom/appfeel/cordova/admob/AdMobAds;->webView:Lorg/apache/cordova/CordovaWebView;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-static {v9, v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1002(Lcom/appfeel/cordova/admob/AdMobAds;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    goto :goto_1b6

    .line 546
    :cond_1f3
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$1000(Lcom/appfeel/cordova/admob/AdMobAds;)Landroid/view/ViewGroup;

    move-result-object v8

    iget-object v9, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v9}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1cd

    .line 557
    :cond_203
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8}, Lcom/appfeel/cordova/admob/AdMobAds;->access$400(Lcom/appfeel/cordova/admob/AdMobAds;)Lcom/google/android/gms/ads/AdView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 558
    iget-object v8, p0, Lcom/appfeel/cordova/admob/AdMobAds$2;->this$0:Lcom/appfeel/cordova/admob/AdMobAds;

    invoke-static {v8, v12}, Lcom/appfeel/cordova/admob/AdMobAds;->access$302(Lcom/appfeel/cordova/admob/AdMobAds;Z)Z

    goto/16 :goto_10
.end method
