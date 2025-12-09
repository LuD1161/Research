.class public final Lc0/j$b$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j$b;->b(Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lc0/j$b;

.field public k:I


# direct methods
.method public constructor <init>(Lc0/j$b;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$b$a;->j:Lc0/j$b;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc0/j$b$a;->i:Ljava/lang/Object;

    iget p1, p0, Lc0/j$b$a;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc0/j$b$a;->k:I

    iget-object p1, p0, Lc0/j$b$a;->j:Lc0/j$b;

    invoke-virtual {p1, p0}, Lc0/j$b;->b(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
