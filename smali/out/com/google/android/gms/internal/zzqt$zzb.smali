.class Lcom/google/android/gms/internal/zzqt$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zi:Lcom/google/android/gms/internal/zzqt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqt;Lcom/google/android/gms/internal/zzqt$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqt$zzb;-><init>(Lcom/google/android/gms/internal/zzqt;)V

    return-void
.end method


# virtual methods
.method public zzc(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zzc(Lcom/google/android/gms/internal/zzqt;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;IZ)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_25
    return-void

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zzf(Lcom/google/android/gms/internal/zzqt;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrf;->onConnectionSuspended(I)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_25

    :catchall_3f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzqt;->zzb(Lcom/google/android/gms/internal/zzqt;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zzb(Lcom/google/android/gms/internal/zzqt;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzn(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->wO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzqt;->zzb(Lcom/google/android/gms/internal/zzqt;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zzb(Lcom/google/android/gms/internal/zzqt;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqt$zzb;->zi:Lcom/google/android/gms/internal/zzqt;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqt;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
