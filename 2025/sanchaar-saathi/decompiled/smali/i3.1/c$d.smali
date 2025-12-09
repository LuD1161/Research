.class public final Li3/c$d;
.super Li3/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final f:Li3/c;

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(Li3/c;II)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li3/c;-><init>()V

    iput-object p1, p0, Li3/c$d;->f:Li3/c;

    iput p2, p0, Li3/c$d;->g:I

    sget-object v0, Li3/c;->e:Li3/c$a;

    invoke-virtual {p1}, Li3/b;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Li3/c$a;->c(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Li3/c$d;->h:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Li3/c;->e:Li3/c$a;

    iget v1, p0, Li3/c$d;->h:I

    invoke-virtual {v0, p1, v1}, Li3/c$a;->a(II)V

    iget-object v0, p0, Li3/c$d;->f:Li3/c;

    iget v1, p0, Li3/c$d;->g:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Li3/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t()I
    .locals 1

    iget v0, p0, Li3/c$d;->h:I

    return v0
.end method
