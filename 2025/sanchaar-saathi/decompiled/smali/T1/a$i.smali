.class public LT1/a$i;
.super LA1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LT1/a$i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT1/n;

    invoke-direct {v0}, LT1/n;-><init>()V

    sput-object v0, LT1/a$i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput p1, p0, LT1/a$i;->e:I

    iput-object p2, p0, LT1/a$i;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, LT1/a$i;->e:I

    invoke-static {p1, v0, v1}, LA1/c;->i(Landroid/os/Parcel;II)V

    iget-object v0, p0, LT1/a$i;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
