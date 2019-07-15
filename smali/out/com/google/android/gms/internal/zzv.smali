.class public Lcom/google/android/gms/internal/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzv$zzb;,
        Lcom/google/android/gms/internal/zzv$zza;
    }
.end annotation


# instance fields
.field private final zzbw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzv$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbx:J

.field private final zzby:Ljava/io/File;

.field private final zzbz:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzv;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    iput p2, p0, Lcom/google/android/gms/internal/zzv;->zzbz:I

    return-void
.end method

.method private removeEntry(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    if-eqz v0, :cond_17

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method private static zza(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_d
    return v0
.end method

.method static zza(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zza(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zza(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    goto :goto_f
.end method

.method static zza(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_30

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_11

    :cond_30
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;I)V

    :cond_34
    return-void
.end method

.method private static zza(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_10

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    add-int/2addr v0, v2

    goto :goto_3

    :cond_10
    if-eq v0, p1, :cond_3d

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    return-object v1
.end method

.method static zzb(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static zzc(Ljava/io/InputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0xff

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private zzc(I)V
    .registers 16

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    int-to-long v4, p1

    add-long/2addr v0, v4

    iget v3, p0, Lcom/google/android/gms/internal/zzv;->zzbz:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "Pruning old cache entries."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_8d

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    int-to-long v10, p1

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcom/google/android/gms/internal/zzv;->zzbz:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-gez v1, :cond_a1

    :goto_65
    sget-boolean v1, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v13

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_8d
    const-string v8, "Could not delete cache entry for key=%s, filename=%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_50

    :cond_a1
    move v1, v0

    goto :goto_2b

    :cond_a3
    move v0, v1

    goto :goto_65
.end method

.method static zzd(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzc(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private zze(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31
.end method

.method static zze(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzb(Ljava/io/InputStream;)I

    move-result v2

    if-nez v2, :cond_23

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_29

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_a

    :cond_29
    return-object v0
.end method


# virtual methods
.method public declared-synchronized initialize()V
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_6c

    :cond_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_23

    array-length v4, v3

    move v2, v0

    :goto_2f
    if-ge v2, v4, :cond_23

    aget-object v5, v3, v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_6c

    const/4 v1, 0x0

    :try_start_34
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_56
    .catchall {:try_start_34 .. :try_end_3e} :catchall_65

    :try_start_3e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzv$zza;->zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzv$zza;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    iget-object v6, v1, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4d} :catch_78
    .catchall {:try_start_3e .. :try_end_4d} :catchall_73

    if-eqz v0, :cond_52

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_6f
    .catchall {:try_start_4f .. :try_end_52} :catchall_6c

    :cond_52
    :goto_52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2f

    :catch_56
    move-exception v0

    move-object v0, v1

    :goto_58
    if-eqz v5, :cond_5d

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_73

    :cond_5d
    if-eqz v0, :cond_52

    :try_start_5f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_6c

    goto :goto_52

    :catch_63
    move-exception v0

    goto :goto_52

    :catchall_65
    move-exception v0

    :goto_66
    if-eqz v1, :cond_6b

    :try_start_68
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_71
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    :cond_6b
    :goto_6b
    :try_start_6b
    throw v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6f
    move-exception v0

    goto :goto_52

    :catch_71
    move-exception v1

    goto :goto_6b

    :catchall_73
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_66

    :catch_78
    move-exception v1

    goto :goto_58
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->removeEntry(Ljava/lang/String;)V

    if-nez v0, :cond_20

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzb$zza;
    .registers 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_6a

    if-nez v0, :cond_f

    move-object v0, v1

    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_6a

    move-result-object v3

    :try_start_13
    new-instance v2, Lcom/google/android/gms/internal/zzv$zzb;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/zzv$zzb;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/zzv$1;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_3d
    .catchall {:try_start_13 .. :try_end_1e} :catchall_62

    :try_start_1e
    invoke-static {v2}, Lcom/google/android/gms/internal/zzv$zza;->zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzv$zza;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2}, Lcom/google/android/gms/internal/zzv$zzb;->zza(Lcom/google/android/gms/internal/zzv$zzb;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzv$zza;->zzb([B)Lcom/google/android/gms/internal/zzb$zza;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_33} :catch_72
    .catchall {:try_start_1e .. :try_end_33} :catchall_70

    move-result-object v0

    if-eqz v2, :cond_d

    :try_start_36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_6a

    goto :goto_d

    :catch_3a
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catch_3d
    move-exception v0

    move-object v2, v1

    :goto_3f
    :try_start_3f
    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->remove(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_70

    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5f
    .catchall {:try_start_5a .. :try_end_5d} :catchall_6a

    :cond_5d
    move-object v0, v1

    goto :goto_d

    :catch_5f
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catchall_62
    move-exception v0

    move-object v2, v1

    :goto_64
    if-eqz v2, :cond_69

    :try_start_66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6d
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    :cond_69
    :try_start_69
    throw v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6d
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catchall_70
    move-exception v0

    goto :goto_64

    :catch_72
    move-exception v0

    goto :goto_3f
.end method

.method public declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzb$zza;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzv;->zzc(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_57

    move-result-object v0

    :try_start_b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/google/android/gms/internal/zzv$zza;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzv$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzb$zza;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzv$zza;->zza(Ljava/io/OutputStream;)Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string v1, "Failed to write header for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_33} :catch_33
    .catchall {:try_start_b .. :try_end_33} :catchall_57

    :catch_33
    move-exception v1

    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_57

    :cond_49
    :goto_49
    monitor-exit p0

    return-void

    :cond_4b
    :try_start_4b
    iget-object v3, p2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_56} :catch_33
    .catchall {:try_start_4b .. :try_end_56} :catchall_57

    goto :goto_49

    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzf(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
