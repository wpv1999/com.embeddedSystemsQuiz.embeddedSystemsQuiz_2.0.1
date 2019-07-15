.class public Lcom/google/android/gms/internal/zzbn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzagd:Lcom/google/android/gms/internal/zzbc;

.field private final zzajb:Lcom/google/android/gms/internal/zzaf$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Lcom/google/android/gms/internal/zzaf$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbn;->zzagd:Lcom/google/android/gms/internal/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbn;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbn;->zzdo()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzdo()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbn;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcw()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbn;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcw()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbn;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbc;->zzcv()Lcom/google/android/gms/internal/zzaf$zza;

    move-result-object v0

    if-eqz v0, :cond_26

    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbn;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v1
    :try_end_1c
    .catch Lcom/google/android/gms/internal/zzarz; {:try_start_19 .. :try_end_1c} :catch_2b

    :try_start_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbn;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasa;->zzf(Lcom/google/android/gms/internal/zzasa;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzasa;->zza(Lcom/google/android/gms/internal/zzasa;[B)Lcom/google/android/gms/internal/zzasa;

    monitor-exit v1

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catch Lcom/google/android/gms/internal/zzarz; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    goto :goto_26
.end method
