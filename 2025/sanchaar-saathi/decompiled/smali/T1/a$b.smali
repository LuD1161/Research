.class public LT1/a$b;
.super LA1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LT1/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT1/f;

    invoke-direct {v0}, LT1/f;-><init>()V

    sput-object v0, LT1/a$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, LT1/a$b;->e:I

    iput p2, p0, LT1/a$b;->f:I

    iput p3, p0, LT1/a$b;->g:I

    iput p4, p0, LT1/a$b;->h:I

    iput p5, p0, LT1/a$b;->i:I

    iput p6, p0, LT1/a$b;->j:I

    iput-boolean p7, p0, LT1/a$b;->k:Z

    iput-object p8, p0, LT1/a$b;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, LT1/a$b;->e:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, LT1/a$b;->f:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, LT1/a$b;->g:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget v1, p0, LT1/a$b;->h:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    iget v1, p0, LT1/a$b;->i:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget v1, p0, LT1/a$b;->j:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-boolean v1, p0, LT1/a$b;->k:Z

    invoke-static {p1, v0, v1}, LA1/c;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, LT1/a$b;->l:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {p1, v2, v0, v1}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
