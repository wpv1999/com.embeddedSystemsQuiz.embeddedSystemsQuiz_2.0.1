.class abstract Lcom/google/android/gms/internal/zzrf$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# instance fields
.field private final AD:Lcom/google/android/gms/internal/zzre;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzre;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf$zza;->AD:Lcom/google/android/gms/internal/zzre;

    return-void
.end method


# virtual methods
.method protected abstract zzaso()V
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzrf;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/internal/zzrf;->zzb(Lcom/google/android/gms/internal/zzrf;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf$zza;->AD:Lcom/google/android/gms/internal/zzre;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_22

    if-eq v0, v1, :cond_17

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_16
    return-void

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrf$zza;->zzaso()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_16

    :catchall_22
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrf;->zza(Lcom/google/android/gms/internal/zzrf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
