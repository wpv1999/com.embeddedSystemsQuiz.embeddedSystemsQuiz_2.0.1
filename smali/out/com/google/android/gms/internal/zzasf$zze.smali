.class public final Lcom/google/android/gms/internal/zzasf$zze;
.super Lcom/google/android/gms/internal/zzaru;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzasf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzasf$zze;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public buB:I

.field public buC:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasf$zze;->cK()Lcom/google/android/gms/internal/zzasf$zze;

    return-void
.end method


# virtual methods
.method public cK()Lcom/google/android/gms/internal/zzasf$zze;
    .registers 3

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    iput v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->btP:I

    return-object p0
.end method

.method public cL()Lcom/google/android/gms/internal/zzasf$zze;
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->cn()Lcom/google/android/gms/internal/zzaru;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzasf$zze;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasf$zze;->cL()Lcom/google/android/gms/internal/zzasf$zze;

    move-result-object v0

    return-object v0
.end method

.method public synthetic cn()Lcom/google/android/gms/internal/zzaru;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasf$zze;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzasf$zze;

    return-object v0
.end method

.method public synthetic co()Lcom/google/android/gms/internal/zzasa;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzasf$zze;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzasf$zze;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzasf$zze;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzasf$zze;

    iget v2, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    iget v3, p1, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    iget v3, p1, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_24
    iget-object v2, p1, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v2, :cond_30

    iget-object v2, p1, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_30
    move v0, v1

    goto :goto_5

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarw;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_26
    const/4 v0, 0x0

    :goto_27
    add-int/2addr v0, v1

    return v0

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->btG:Lcom/google/android/gms/internal/zzarw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarw;->hashCode()I

    move-result v0

    goto :goto_27
.end method

.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_15
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzasf$zze;->zzcs(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasf$zze;

    move-result-object v0

    return-object v0
.end method

.method public zzcs(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasf$zze;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    goto :goto_0

    :sswitch_21
    iput v0, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    goto :goto_0

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_32
    .packed-switch -0x1
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_21
        0x1 -> :sswitch_21
        0x2 -> :sswitch_21
        0x3 -> :sswitch_21
        0x4 -> :sswitch_21
        0x5 -> :sswitch_21
        0x6 -> :sswitch_21
        0x7 -> :sswitch_21
        0x8 -> :sswitch_21
        0x9 -> :sswitch_21
        0xa -> :sswitch_21
        0xb -> :sswitch_21
        0xc -> :sswitch_21
        0xd -> :sswitch_21
        0xe -> :sswitch_21
        0xf -> :sswitch_21
        0x10 -> :sswitch_21
        0x64 -> :sswitch_21
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzasf$zze;->buB:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    if-eqz v1, :cond_1d

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzasf$zze;->buC:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    return v0
.end method
