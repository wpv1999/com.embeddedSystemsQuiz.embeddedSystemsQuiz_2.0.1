.class final Lcom/google/android/gms/internal/zzaqn$27;
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
        "Ljava/lang/Boolean;",
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
.method public zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Boolean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaqr;->zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    return-void

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaqn$27;->zza(Lcom/google/android/gms/internal/zzaqr;Ljava/lang/Boolean;)V

    return-void
.end method

.method public zzae(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Boolean;
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqp;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaqn$27;->zzae(Lcom/google/android/gms/internal/zzaqp;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
