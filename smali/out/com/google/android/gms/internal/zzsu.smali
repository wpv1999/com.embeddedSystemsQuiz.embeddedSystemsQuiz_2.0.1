.class public Lcom/google/android/gms/internal/zzsu;
.super Ljava/lang/Object;


# instance fields
.field private final ED:Ljava/lang/String;

.field private final EX:Lcom/google/android/gms/common/internal/zzo;

.field private final ee:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsu;->ED:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsu;->mTag:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/internal/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsu;->EX:Lcom/google/android/gms/common/internal/zzo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsu;->getLogLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsu;->ee:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/google/android/gms/internal/zzsu;->zzd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzsu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLogLevel()I
    .registers 3

    const/4 v0, 0x2

    :goto_1
    const/4 v1, 0x7

    if-lt v1, v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsu;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return v0
.end method

.method private static varargs zzd([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    array-length v0, p0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, p0

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_28

    aget-object v3, p0, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_28
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method protected varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_9

    array-length v0, p2

    if-lez v0, :cond_9

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsu;->ED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs zza(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsu;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsu;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzsu;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public zzbi(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzsu;->ee:I

    if-gt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public varargs zze(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsu;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzsu;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsu;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzsu;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
