.class final Lcom/google/android/gms/internal/zzls$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzls;->zzo(Ljava/util/List;)Lcom/google/android/gms/internal/zzlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcyk:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic zzcyl:I

.field final synthetic zzcym:Lcom/google/android/gms/internal/zzlq;

.field final synthetic zzcyn:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/zzlq;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzls$2;->zzcyk:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lcom/google/android/gms/internal/zzls$2;->zzcyl:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzls$2;->zzcym:Lcom/google/android/gms/internal/zzlq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzls$2;->zzcyn:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls$2;->zzcyk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzls$2;->zzcyl:I

    if-lt v0, v1, :cond_15

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzls$2;->zzcym:Lcom/google/android/gms/internal/zzlq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzls$2;->zzcyn:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzls;->zzq(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlq;->zzh(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_15} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    :goto_17
    const-string v1, "Unable to convert list of futures to a future of list"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catch_1d
    move-exception v0

    goto :goto_17
.end method
