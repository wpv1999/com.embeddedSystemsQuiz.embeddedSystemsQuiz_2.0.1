.class Lcom/google/android/gms/internal/zzfx$6;
.super Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfx;->zzc(Lcom/google/android/gms/ads/internal/zzl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbrr:Lcom/google/android/gms/internal/zzfx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$6$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$6$4;-><init>(Lcom/google/android/gms/internal/zzfx$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$6$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfx$6$7;-><init>(Lcom/google/android/gms/internal/zzfx$6;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$6$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$6$6;-><init>(Lcom/google/android/gms/internal/zzfx$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$6$1;-><init>(Lcom/google/android/gms/internal/zzfx$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$6$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$6$2;-><init>(Lcom/google/android/gms/internal/zzfx$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRewardedVideoStarted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$6$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$6$3;-><init>(Lcom/google/android/gms/internal/zzfx$6;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$6;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$6$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfx$6$5;-><init>(Lcom/google/android/gms/internal/zzfx$6;Lcom/google/android/gms/ads/internal/reward/client/zza;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
