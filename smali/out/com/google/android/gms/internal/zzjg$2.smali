.class Lcom/google/android/gms/internal/zzjg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjg;->zza(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcjf:Lcom/google/android/gms/internal/zzjg;

.field final synthetic zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjg;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjf:Lcom/google/android/gms/internal/zzjg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjf:Lcom/google/android/gms/internal/zzjg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzjg;->zza(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_f
    .catchall {:try_start_0 .. :try_end_5} :catchall_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    :try_start_10
    const-string v0, "AdMob exception reporter failed reporting the exception."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg$2;->zzcjg:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_29
    throw v0
.end method
