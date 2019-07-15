.class Lcom/google/android/gms/internal/zzrb$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zze$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final vS:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final yU:I

.field private final zS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzrb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrb;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrb$zza;->zS:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrb$zza;->vS:Lcom/google/android/gms/common/api/Api;

    iput p3, p0, Lcom/google/android/gms/internal/zzrb$zza;->yU:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrb$zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrb$zza;->yU:I

    return v0
.end method


# virtual methods
.method public zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$zza;->zS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrb;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzd(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzrf;->yW:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzrd;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->zza(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_2a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrb;->zza(Lcom/google/android/gms/internal/zzrb;I)Z
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_56

    move-result v1

    if-nez v1, :cond_38

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :cond_38
    :try_start_38
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$zza;->vS:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzrb$zza;->yU:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzrb;->zza(Lcom/google/android/gms/internal/zzrb;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    :cond_45
    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzk(Lcom/google/android/gms/internal/zzrb;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzj(Lcom/google/android/gms/internal/zzrb;)V
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_56

    :cond_4e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :catchall_56
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
