.class public Lcom/google/android/gms/internal/zzlc$zzc;
.super Lcom/google/android/gms/internal/zzlc$zzb;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlc$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzn(Lcom/google/android/gms/internal/zzmd;)Landroid/webkit/WebChromeClient;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzmm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzmm;-><init>(Lcom/google/android/gms/internal/zzmd;)V

    return-object v0
.end method
