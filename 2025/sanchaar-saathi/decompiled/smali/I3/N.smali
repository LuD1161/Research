.class public final LI3/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll3/i;

.field public final b:[Ljava/lang/Object;

.field public final c:[LD3/I0;

.field public d:I


# direct methods
.method public constructor <init>(Ll3/i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/N;->a:Ll3/i;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, LI3/N;->b:[Ljava/lang/Object;

    new-array p1, p2, [LD3/I0;

    iput-object p1, p0, LI3/N;->c:[LD3/I0;

    return-void
.end method


# virtual methods
.method public final a(LD3/I0;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LI3/N;->b:[Ljava/lang/Object;

    iget v1, p0, LI3/N;->d:I

    aput-object p2, v0, v1

    iget-object p2, p0, LI3/N;->c:[LD3/I0;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, LI3/N;->d:I

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, p2, v1

    return-void
.end method

.method public final b(Ll3/i;)V
    .locals 4

    iget-object v0, p0, LI3/N;->c:[LD3/I0;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, LI3/N;->c:[LD3/I0;

    aget-object v2, v2, v0

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v3, p0, LI3/N;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p1, v0}, LD3/I0;->m(Ll3/i;Ljava/lang/Object;)V

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
