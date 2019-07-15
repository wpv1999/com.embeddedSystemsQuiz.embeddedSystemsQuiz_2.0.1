.class Lcom/google/android/gms/internal/zzgh$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgh$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbtx:Lcom/google/android/gms/internal/zzge;

.field final synthetic zzbty:Lcom/google/android/gms/internal/zzgh$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgh$1;Lcom/google/android/gms/internal/zzge;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgh$1$4;->zzbty:Lcom/google/android/gms/internal/zzgh$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgh$1$4;->zzbtx:Lcom/google/android/gms/internal/zzge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1$4;->zzbty:Lcom/google/android/gms/internal/zzgh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgh$1;->zzbtw:Lcom/google/android/gms/internal/zzgh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgh;->zzc(Lcom/google/android/gms/internal/zzgh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1$4;->zzbty:Lcom/google/android/gms/internal/zzgh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgh$1;->zzbtv:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1$4;->zzbty:Lcom/google/android/gms/internal/zzgh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgh$1;->zzbtv:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    :cond_1f
    monitor-exit v1

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgh$1$4;->zzbty:Lcom/google/android/gms/internal/zzgh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgh$1;->zzbtv:Lcom/google/android/gms/internal/zzgh$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh$zzd;->reject()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzgh$1$4$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzgh$1$4$1;-><init>(Lcom/google/android/gms/internal/zzgh$1$4;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzlb;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_20

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_3b

    throw v0
.end method
