.class public final Lu1/a;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lu1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lu1/a;


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Landroid/app/PendingIntent;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu1/a;-><init>(I)V

    sput-object v0, Lu1/a;->i:Lu1/a;

    new-instance v0, Lu1/l;

    invoke-direct {v0}, Lu1/l;-><init>()V

    sput-object v0, Lu1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lu1/a;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, Lu1/a;->e:I

    iput p2, p0, Lu1/a;->f:I

    iput-object p3, p0, Lu1/a;->g:Landroid/app/PendingIntent;

    iput-object p4, p0, Lu1/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lu1/a;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lu1/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public static j(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x63

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5dc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x14

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "API_INSTALL_REQUIRED"

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "API_DISABLED_FOR_CONNECTION"

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "API_DISABLED"

    goto :goto_0

    :pswitch_3
    const-string p0, "RESOLUTION_ACTIVITY_NOT_FOUND"

    goto :goto_0

    :pswitch_4
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_5
    const-string p0, "RESTRICTED_PROFILE"

    goto :goto_0

    :pswitch_6
    const-string p0, "SERVICE_MISSING_PERMISSION"

    goto :goto_0

    :pswitch_7
    const-string p0, "SERVICE_UPDATING"

    goto :goto_0

    :pswitch_8
    const-string p0, "SIGN_IN_FAILED"

    goto :goto_0

    :pswitch_9
    const-string p0, "API_UNAVAILABLE"

    goto :goto_0

    :pswitch_a
    const-string p0, "INTERRUPTED"

    goto :goto_0

    :pswitch_b
    const-string p0, "TIMEOUT"

    goto :goto_0

    :pswitch_c
    const-string p0, "CANCELED"

    goto :goto_0

    :pswitch_d
    const-string p0, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :pswitch_e
    const-string p0, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_f
    const-string p0, "SERVICE_INVALID"

    goto :goto_0

    :pswitch_10
    const-string p0, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_11
    const-string p0, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_12
    const-string p0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_13
    const-string p0, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_14
    const-string p0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_15
    const-string p0, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_16
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_17
    const-string p0, "SERVICE_MISSING"

    goto :goto_0

    :pswitch_18
    const-string p0, "SUCCESS"

    goto :goto_0

    :pswitch_19
    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    goto :goto_0

    :cond_1
    const-string p0, "UNFINISHED"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lu1/a;->f:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu1/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu1/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu1/a;

    iget v1, p0, Lu1/a;->f:I

    iget v3, p1, Lu1/a;->f:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lu1/a;->g:Landroid/app/PendingIntent;

    iget-object v3, p1, Lu1/a;->g:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lu1/a;->h:Ljava/lang/String;

    iget-object p1, p1, Lu1/a;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lz1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public g()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lu1/a;->g:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget v0, p0, Lu1/a;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu1/a;->g:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lu1/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lu1/a;->g:Landroid/app/PendingIntent;

    iget-object v2, p0, Lu1/a;->h:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lz1/n;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget v0, p0, Lu1/a;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lz1/n;->c(Ljava/lang/Object;)Lz1/n$a;

    move-result-object v0

    iget v1, p0, Lu1/a;->f:I

    const-string v2, "statusCode"

    invoke-static {v1}, Lu1/a;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lz1/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lz1/n$a;

    const-string v1, "resolution"

    iget-object v2, p0, Lu1/a;->g:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lz1/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lz1/n$a;

    const-string v1, "message"

    iget-object v2, p0, Lu1/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lz1/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lz1/n$a;

    invoke-virtual {v0}, Lz1/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lu1/a;->e:I

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lu1/a;->d()I

    move-result v2

    invoke-static {p1, v0, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lu1/a;->g()Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lu1/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v3}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v1}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
