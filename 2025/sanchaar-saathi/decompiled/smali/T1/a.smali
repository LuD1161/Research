.class public LT1/a;
.super LA1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT1/a$e;,
        LT1/a$d;,
        LT1/a$a;,
        LT1/a$h;,
        LT1/a$c;,
        LT1/a$b;,
        LT1/a$g;,
        LT1/a$k;,
        LT1/a$l;,
        LT1/a$j;,
        LT1/a$i;,
        LT1/a$f;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LT1/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:[Landroid/graphics/Point;

.field public j:LT1/a$f;

.field public k:LT1/a$i;

.field public l:LT1/a$j;

.field public m:LT1/a$l;

.field public n:LT1/a$k;

.field public o:LT1/a$g;

.field public p:LT1/a$c;

.field public q:LT1/a$d;

.field public r:LT1/a$e;

.field public s:[B

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT1/d;

    invoke-direct {v0}, LT1/d;-><init>()V

    sput-object v0, LT1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LA1/a;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;LT1/a$f;LT1/a$i;LT1/a$j;LT1/a$l;LT1/a$k;LT1/a$g;LT1/a$c;LT1/a$d;LT1/a$e;[BZ)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, LA1/a;-><init>()V

    move v1, p1

    .line 3
    iput v1, v0, LT1/a;->e:I

    move-object v1, p2

    .line 4
    iput-object v1, v0, LT1/a;->f:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 5
    iput-object v1, v0, LT1/a;->s:[B

    move-object v1, p3

    .line 6
    iput-object v1, v0, LT1/a;->g:Ljava/lang/String;

    move v1, p4

    .line 7
    iput v1, v0, LT1/a;->h:I

    move-object v1, p5

    .line 8
    iput-object v1, v0, LT1/a;->i:[Landroid/graphics/Point;

    move/from16 v1, p16

    .line 9
    iput-boolean v1, v0, LT1/a;->t:Z

    move-object v1, p6

    .line 10
    iput-object v1, v0, LT1/a;->j:LT1/a$f;

    move-object v1, p7

    .line 11
    iput-object v1, v0, LT1/a;->k:LT1/a$i;

    move-object v1, p8

    .line 12
    iput-object v1, v0, LT1/a;->l:LT1/a$j;

    move-object v1, p9

    .line 13
    iput-object v1, v0, LT1/a;->m:LT1/a$l;

    move-object v1, p10

    .line 14
    iput-object v1, v0, LT1/a;->n:LT1/a$k;

    move-object v1, p11

    .line 15
    iput-object v1, v0, LT1/a;->o:LT1/a$g;

    move-object v1, p12

    .line 16
    iput-object v1, v0, LT1/a;->p:LT1/a$c;

    move-object v1, p13

    .line 17
    iput-object v1, v0, LT1/a;->q:LT1/a$d;

    move-object/from16 v1, p14

    .line 18
    iput-object v1, v0, LT1/a;->r:LT1/a$e;

    return-void
.end method


# virtual methods
.method public d()Landroid/graphics/Rect;
    .locals 7

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v3

    :goto_0
    iget-object v5, p0, LT1/a;->i:[Landroid/graphics/Point;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v4

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, LT1/a;->e:I

    invoke-static {p1, v1, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    iget-object v1, p0, LT1/a;->f:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, LT1/a;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget v2, p0, LT1/a;->h:I

    invoke-static {p1, v1, v2}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, LT1/a;->i:[Landroid/graphics/Point;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, LT1/a;->j:LT1/a$f;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, LT1/a;->k:LT1/a$i;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, LT1/a;->l:LT1/a$j;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, LT1/a;->m:LT1/a$l;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, LT1/a;->n:LT1/a$k;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, LT1/a;->o:LT1/a$g;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xd

    iget-object v2, p0, LT1/a;->p:LT1/a$c;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xe

    iget-object v2, p0, LT1/a;->q:LT1/a$d;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xf

    iget-object v2, p0, LT1/a;->r:LT1/a$e;

    invoke-static {p1, v1, v2, p2, v3}, LA1/c;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x10

    iget-object v1, p0, LT1/a;->s:[B

    invoke-static {p1, p2, v1, v3}, LA1/c;->e(Landroid/os/Parcel;I[BZ)V

    const/16 p2, 0x11

    iget-boolean v1, p0, LT1/a;->t:Z

    invoke-static {p1, p2, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
