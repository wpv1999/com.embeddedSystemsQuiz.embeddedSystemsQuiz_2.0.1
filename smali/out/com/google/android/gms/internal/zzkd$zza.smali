.class public final Lcom/google/android/gms/internal/zzkd$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzbwa:Ljava/lang/String;

.field private zzcgw:I

.field private zzcrp:Ljava/lang/String;

.field private zzcrq:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkd$zza;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzbwa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzkd$zza;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzcrp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzkd$zza;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzcgw:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzkd$zza;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzcrq:J

    return-wide v0
.end method


# virtual methods
.method public zzbc(I)Lcom/google/android/gms/internal/zzkd$zza;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzcgw:I

    return-object p0
.end method

.method public zzcr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzkd$zza;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzbwa:Ljava/lang/String;

    return-object p0
.end method

.method public zzcs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzkd$zza;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzcrp:Ljava/lang/String;

    return-object p0
.end method

.method public zzl(J)Lcom/google/android/gms/internal/zzkd$zza;
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzkd$zza;->zzcrq:J

    return-object p0
.end method

.method public zztz()Lcom/google/android/gms/internal/zzkd;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzkd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzkd;-><init>(Lcom/google/android/gms/internal/zzkd$zza;Lcom/google/android/gms/internal/zzkd$1;)V

    return-object v0
.end method
