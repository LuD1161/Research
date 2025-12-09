.class public final LQ1/l;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LQ1/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Lu1/a;

.field public final g:Lz1/G;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQ1/m;

    invoke-direct {v0}, LQ1/m;-><init>()V

    sput-object v0, LQ1/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILu1/a;Lz1/G;)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, LQ1/l;->e:I

    iput-object p2, p0, LQ1/l;->f:Lu1/a;

    iput-object p3, p0, LQ1/l;->g:Lz1/G;

    return-void
.end method


# virtual methods
.method public final d()Lu1/a;
    .locals 1

    iget-object v0, p0, LQ1/l;->f:Lu1/a;

    return-object v0
.end method

.method public final e()Lz1/G;
    .locals 1

    iget-object v0, p0, LQ1/l;->g:Lz1/G;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, LQ1/l;->e:I

    invoke-static {p1, v1, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    iget-object v1, p0, LQ1/l;->f:Lu1/a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, LQ1/l;->g:Lz1/G;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
