.class Lcom/google/android/gms/internal/zzhm$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhm;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbxp:Lcom/google/android/gms/internal/zzhm;

.field final synthetic zzbxq:Lcom/google/ads/AdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhm;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhm$5;->zzbxp:Lcom/google/android/gms/internal/zzhm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhm$5;->zzbxq:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm$5;->zzbxp:Lcom/google/android/gms/internal/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhm;->zza(Lcom/google/android/gms/internal/zzhm;)Lcom/google/android/gms/internal/zzhb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhm$5;->zzbxq:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhn;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhb;->onAdFailedToLoad(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method
