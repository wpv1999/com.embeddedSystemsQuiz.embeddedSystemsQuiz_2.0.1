.class Lcom/google/android/gms/internal/zzbc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbc;->zzcz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaim:Lcom/google/android/gms/internal/zzbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbc$2;->zzaim:Lcom/google/android/gms/internal/zzbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc$2;->zzaim:Lcom/google/android/gms/internal/zzbc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbc;->zzc(Lcom/google/android/gms/internal/zzbc;)V

    sget-object v1, Lcom/google/android/gms/internal/zzbc;->zzaid:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc$2;->zzaim:Lcom/google/android/gms/internal/zzbc;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbc;->zza(Lcom/google/android/gms/internal/zzbc;Z)Z

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method
