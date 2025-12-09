.class public Lz1/f;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz1/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Lz1/q;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/X;

    invoke-direct {v0}, Lz1/X;-><init>()V

    sput-object v0, Lz1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lz1/q;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput-object p1, p0, Lz1/f;->e:Lz1/q;

    iput-boolean p2, p0, Lz1/f;->f:Z

    iput-boolean p3, p0, Lz1/f;->g:Z

    iput-object p4, p0, Lz1/f;->h:[I

    iput p5, p0, Lz1/f;->i:I

    iput-object p6, p0, Lz1/f;->j:[I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lz1/f;->i:I

    return v0
.end method

.method public e()[I
    .locals 1

    iget-object v0, p0, Lz1/f;->h:[I

    return-object v0
.end method

.method public g()[I
    .locals 1

    iget-object v0, p0, Lz1/f;->j:[I

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lz1/f;->f:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lz1/f;->g:Z

    return v0
.end method

.method public final j()Lz1/q;
    .locals 1

    iget-object v0, p0, Lz1/f;->e:Lz1/q;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lz1/f;->e:Lz1/q;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    invoke-virtual {p0}, Lz1/f;->h()Z

    move-result v1

    invoke-static {p1, p2, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    invoke-virtual {p0}, Lz1/f;->i()Z

    move-result v1

    invoke-static {p1, p2, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lz1/f;->e()[I

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LA1/c;->j(Landroid/os/Parcel;I[IZ)V

    const/4 p2, 0x5

    invoke-virtual {p0}, Lz1/f;->d()I

    move-result v1

    invoke-static {p1, p2, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 p2, 0x6

    invoke-virtual {p0}, Lz1/f;->g()[I

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LA1/c;->j(Landroid/os/Parcel;I[IZ)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
