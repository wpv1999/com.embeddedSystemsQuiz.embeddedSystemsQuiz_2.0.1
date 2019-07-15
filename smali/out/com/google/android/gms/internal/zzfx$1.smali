.class Lcom/google/android/gms/internal/zzfx$1;
.super Lcom/google/android/gms/ads/internal/client/zzq$zza;


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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfx$1;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzq$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$1;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$1$1;-><init>(Lcom/google/android/gms/internal/zzfx$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$1;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzfx$1$2;-><init>(Lcom/google/android/gms/internal/zzfx$1;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$1;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$1$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$1$3;-><init>(Lcom/google/android/gms/internal/zzfx$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAdLoaded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$1;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$1$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$1$4;-><init>(Lcom/google/android/gms/internal/zzfx$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx$1;->zzbrr:Lcom/google/android/gms/internal/zzfx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfx$1$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfx$1$5;-><init>(Lcom/google/android/gms/internal/zzfx$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
