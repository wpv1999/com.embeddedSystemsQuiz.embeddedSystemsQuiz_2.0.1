.class public Lcom/google/android/gms/internal/zzqh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zza$zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqh$zzb;,
        Lcom/google/android/gms/internal/zzqh$zza;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static wH:Ljava/lang/Boolean;


# instance fields
.field final wI:Lcom/google/android/gms/internal/zzqh$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzqh;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzqh;->wH:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzqh$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqh$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqh;-><init>(Lcom/google/android/gms/internal/zzqh$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzqh$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzqh$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqh;-><init>(Lcom/google/android/gms/internal/zzqh$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzqh$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqh$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqh;->wI:Lcom/google/android/gms/internal/zzqh$zza;

    return-void
.end method

.method static zza(JJJ)Z
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_a

    cmp-long v0, p4, v2

    if-gez v0, :cond_2f

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "negative values not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    cmp-long v0, p4, v2

    if-lez v0, :cond_3d

    invoke-static {p0, p1, p4, p5}, Lcom/google/android/gms/internal/zzqi;->zzd(JJ)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_3d

    const/4 v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method static zzai(J)J
    .registers 4

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqe;->zzn([B)J

    move-result-wide v0

    return-wide v0
.end method

.method static zzd(Ljava/lang/String;J)J
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzqh;->zzai(J)J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/zzqh;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqe;->zzn([B)J

    move-result-wide v0

    goto :goto_c
.end method

.method static zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqh$zzb;
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_8

    move-object v0, v6

    :goto_7
    return-object v0

    :cond_8
    const-string v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_18

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    :cond_18
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gtz v4, :cond_3d

    const-string v1, "LogSamplerImpl"

    const-string v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_7

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :cond_3d
    :try_start_3d
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_4e} :catch_7d

    move-result-wide v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_57

    cmp-long v0, v4, v8

    if-gez v0, :cond_9d

    :cond_57
    const-string v0, "LogSamplerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x48

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "negative values not supported: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_7

    :catch_7d
    move-exception v0

    move-object v1, v0

    const-string v2, "LogSamplerImpl"

    const-string v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_97

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto/16 :goto_7

    :cond_97
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :cond_9d
    new-instance v0, Lcom/google/android/gms/internal/zzqh$zzb;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqh$zzb;-><init>(Ljava/lang/String;JJ)V

    goto/16 :goto_7
.end method


# virtual methods
.method public zzh(Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    :goto_a
    if-nez p1, :cond_14

    :cond_c
    :goto_c
    return v0

    :cond_d
    if-ltz p2, :cond_35

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->wI:Lcom/google/android/gms/internal/zzqh$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqh$zza;->zzaqj()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqh;->wI:Lcom/google/android/gms/internal/zzqh$zza;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzqh$zza;->zzhf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzqh;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqh$zzb;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v0, v4, Lcom/google/android/gms/internal/zzqh$zzb;->wJ:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzqh;->zzd(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v2, v4, Lcom/google/android/gms/internal/zzqh$zzb;->wK:J

    iget-wide v4, v4, Lcom/google/android/gms/internal/zzqh$zzb;->wL:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqh;->zza(JJJ)Z

    move-result v0

    goto :goto_c

    :cond_35
    move-object p1, v1

    goto :goto_a
.end method
