.class Lcom/google/android/gms/internal/zzgt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgt;->zza(JJ)Lcom/google/android/gms/internal/zzgu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbwi:Lcom/google/android/gms/internal/zzgs;

.field final synthetic zzbwj:Lcom/google/android/gms/internal/zzgt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgt;Lcom/google/android/gms/internal/zzgs;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwi:Lcom/google/android/gms/internal/zzgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgt;->zza(Lcom/google/android/gms/internal/zzgt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgt;->zzb(Lcom/google/android/gms/internal/zzgt;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgt;->zzc(Lcom/google/android/gms/internal/zzgt;)Lcom/google/android/gms/internal/zzha;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgt;->zza(Lcom/google/android/gms/internal/zzgt;Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzha;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgt;->zzd(Lcom/google/android/gms/internal/zzgt;)Lcom/google/android/gms/internal/zzha;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgt;->zzad(I)V

    monitor-exit v1

    goto :goto_11

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgt;->zze(Lcom/google/android/gms/internal/zzgt;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgt;->zza(Lcom/google/android/gms/internal/zzgt;I)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgt;->zzf(Lcom/google/android/gms/internal/zzgt;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignoring adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as delayed impression is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgt;->zzad(I)V

    monitor-exit v1

    goto :goto_11

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwi:Lcom/google/android/gms/internal/zzgs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgs;->zza(Lcom/google/android/gms/internal/zzgu$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwj:Lcom/google/android/gms/internal/zzgt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt$1;->zzbwi:Lcom/google/android/gms/internal/zzgs;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzgt;->zza(Lcom/google/android/gms/internal/zzgt;Lcom/google/android/gms/internal/zzgs;)V

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_30 .. :try_end_84} :catchall_2d

    goto :goto_11
.end method
