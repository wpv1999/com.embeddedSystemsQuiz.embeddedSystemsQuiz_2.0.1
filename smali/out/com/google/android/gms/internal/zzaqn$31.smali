.class final Lcom/google/android/gms/internal/zzaqn$31;
.super Lcom/google/android/gms/internal/zzapk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaqn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapk",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapk;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Number;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzaqr;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqr;

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaqn$31;->zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaqn$31;->zzg(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaqq;->brJ:Lcom/google/android/gms/internal/zzaqq;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_c

    :catch_16
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaph;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaph;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
