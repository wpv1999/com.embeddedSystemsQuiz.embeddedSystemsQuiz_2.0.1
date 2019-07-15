.class Lcom/google/android/gms/internal/zzit$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzit;->zzfp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamz:Lcom/google/android/gms/internal/zzko;

.field final synthetic zzcgv:Lcom/google/android/gms/internal/zzit;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzit;Lcom/google/android/gms/internal/zzko;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzit$2;->zzcgv:Lcom/google/android/gms/internal/zzit;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzit$2;->zzamz:Lcom/google/android/gms/internal/zzko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$2;->zzcgv:Lcom/google/android/gms/internal/zzit;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzit;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzit$2;->zzcgv:Lcom/google/android/gms/internal/zzit;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzit$2;->zzamz:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzit;->zzn(Lcom/google/android/gms/internal/zzko;)V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
