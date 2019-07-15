.class Lcom/google/android/gms/internal/zzmh$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmh;->zzyl()Lcom/google/android/gms/internal/zzfe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic u:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$1;->u:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2e

    const-string v0, "height"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh$1;->u:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmh;->zza(Lcom/google/android/gms/internal/zzmh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_32

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$1;->u:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzmh;->zzb(Lcom/google/android/gms/internal/zzmh;)I

    move-result v2

    if-eq v2, v0, :cond_2d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh$1;->u:Lcom/google/android/gms/internal/zzmh;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzmh;->zza(Lcom/google/android/gms/internal/zzmh;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$1;->u:Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->requestLayout()V

    :cond_2d
    monitor-exit v1

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    const-string v1, "Exception occurred while getting webview content height"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method
