.class Lorg/apache/cordova/CordovaWebViewImpl$2;
.super Ljava/lang/Object;
.source "CordovaWebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaWebViewImpl;

.field final synthetic val$currentLoadUrlTimeout:I

.field final synthetic val$loadError:Ljava/lang/Runnable;

.field final synthetic val$loadUrlTimeoutValue:I


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebViewImpl;IILjava/lang/Runnable;)V
    .registers 5
    .param p1, "this$0"    # Lorg/apache/cordova/CordovaWebViewImpl;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    iput p2, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->val$loadUrlTimeoutValue:I

    iput p3, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->val$currentLoadUrlTimeout:I

    iput-object p4, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->val$loadError:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 172
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_25

    .line 173
    :try_start_1
    iget v1, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->val$loadUrlTimeoutValue:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 174
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_22

    .line 180
    :goto_8
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v1}, Lorg/apache/cordova/CordovaWebViewImpl;->access$100(Lorg/apache/cordova/CordovaWebViewImpl;)I

    move-result v1

    iget v2, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->val$currentLoadUrlTimeout:I

    if-ne v1, v2, :cond_21

    .line 181
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->this$0:Lorg/apache/cordova/CordovaWebViewImpl;

    invoke-static {v1}, Lorg/apache/cordova/CordovaWebViewImpl;->access$200(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/CordovaInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl$2;->val$loadError:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    :cond_21
    return-void

    .line 174
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_25} :catch_25

    .line 175
    :catch_25
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
