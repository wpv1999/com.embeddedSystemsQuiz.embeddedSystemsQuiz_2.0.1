.class Lcom/google/android/gms/tasks/zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tasks/zza;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMH:Lcom/google/android/gms/tasks/Task;

.field final synthetic aMI:Lcom/google/android/gms/tasks/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tasks/zza$1;->aMI:Lcom/google/android/gms/tasks/zza;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zza$1;->aMH:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zza$1;->aMI:Lcom/google/android/gms/tasks/zza;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zza;->zza(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/Continuation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zza$1;->aMH:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_b
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_b} :catch_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_39

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zza$1;->aMI:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh;->setResult(Ljava/lang/Object;)V

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/tasks/zza$1;->aMI:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_15

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/tasks/zza$1;->aMI:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_15

    :catch_39
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zza$1;->aMI:Lcom/google/android/gms/tasks/zza;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zza;->zzb(Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzh;->setException(Ljava/lang/Exception;)V

    goto :goto_15
.end method
