.class public final Lz1/V;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz1/V;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Landroid/os/Bundle;

.field public f:[Lu1/c;

.field public g:I

.field public h:Lz1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/W;

    invoke-direct {v0}, Lz1/W;-><init>()V

    sput-object v0, Lz1/V;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Lu1/c;ILz1/f;)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput-object p1, p0, Lz1/V;->e:Landroid/os/Bundle;

    iput-object p2, p0, Lz1/V;->f:[Lu1/c;

    iput p3, p0, Lz1/V;->g:I

    iput-object p4, p0, Lz1/V;->h:Lz1/f;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lz1/V;->e:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LA1/c;->d(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lz1/V;->f:[Lu1/c;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lz1/V;->g:I

    invoke-static {p1, v1, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lz1/V;->h:Lz1/f;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
