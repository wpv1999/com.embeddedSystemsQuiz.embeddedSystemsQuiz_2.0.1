.class Lcom/google/android/gms/internal/zzgw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzgu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzgu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbwz:Lcom/google/android/gms/internal/zzgt;

.field final synthetic zzbxa:Lcom/google/android/gms/internal/zzgw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgw;Lcom/google/android/gms/internal/zzgt;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzbxa:Lcom/google/android/gms/internal/zzgw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw$1;->zzbwz:Lcom/google/android/gms/internal/zzgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgw$1;->zzol()Lcom/google/android/gms/internal/zzgu;

    move-result-object v0

    return-object v0
.end method

.method public zzol()Lcom/google/android/gms/internal/zzgu;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzbxa:Lcom/google/android/gms/internal/zzgw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgw;->zza(Lcom/google/android/gms/internal/zzgw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzbxa:Lcom/google/android/gms/internal/zzgw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgw;->zzb(Lcom/google/android/gms/internal/zzgw;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    monitor-exit v1

    :goto_11
    return-object v0

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzbwz:Lcom/google/android/gms/internal/zzgt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzbxa:Lcom/google/android/gms/internal/zzgw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgw;->zzc(Lcom/google/android/gms/internal/zzgw;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzbxa:Lcom/google/android/gms/internal/zzgw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgw;->zzd(Lcom/google/android/gms/internal/zzgw;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzgt;->zza(JJ)Lcom/google/android/gms/internal/zzgu;

    move-result-object v0

    goto :goto_11

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
