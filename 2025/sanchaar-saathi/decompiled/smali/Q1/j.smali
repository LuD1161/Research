.class public final LQ1/j;
.super LA1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LQ1/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Lz1/E;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQ1/k;

    invoke-direct {v0}, LQ1/k;-><init>()V

    sput-object v0, LQ1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILz1/E;)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, LQ1/j;->e:I

    iput-object p2, p0, LQ1/j;->f:Lz1/E;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, LQ1/j;->e:I

    invoke-static {p1, v1, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    iget-object v1, p0, LQ1/j;->f:Lz1/E;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
