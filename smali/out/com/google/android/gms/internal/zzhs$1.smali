.class Lcom/google/android/gms/internal/zzhs$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhs;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyt:Ljava/lang/String;

.field final synthetic zzbyu:Ljava/lang/String;

.field final synthetic zzbyv:Lcom/google/android/gms/internal/zzhs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhs;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyv:Lcom/google/android/gms/internal/zzhs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyv:Lcom/google/android/gms/internal/zzhs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhs;->zza(Lcom/google/android/gms/internal/zzhs;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyv:Lcom/google/android/gms/internal/zzhs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyt:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyu:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhs;->zzj(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs$1;->zzbyv:Lcom/google/android/gms/internal/zzhs;

    const-string v1, "Could not store picture."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhs;->zzcb(Ljava/lang/String;)V

    goto :goto_1b
.end method
