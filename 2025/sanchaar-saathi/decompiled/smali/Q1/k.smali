.class public final LQ1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, LA1/b;->u(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2

    invoke-static {p1}, LA1/b;->o(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, LA1/b;->l(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-static {p1, v3}, LA1/b;->t(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lz1/E;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, LA1/b;->e(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lz1/E;

    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, LA1/b;->q(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, LA1/b;->k(Landroid/os/Parcel;I)V

    new-instance p1, LQ1/j;

    invoke-direct {p1, v2, v1}, LQ1/j;-><init>(ILz1/E;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [LQ1/j;

    return-object p1
.end method
