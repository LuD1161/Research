.class public final LG3/l$c$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/l$c;->c(LG3/e;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:LG3/l$c;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LG3/l$c;Ll3/e;)V
    .locals 0

    iput-object p1, p0, LG3/l$c$a;->j:LG3/l$c;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LG3/l$c$a;->h:Ljava/lang/Object;

    iget p1, p0, LG3/l$c$a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LG3/l$c$a;->i:I

    iget-object p1, p0, LG3/l$c$a;->j:LG3/l$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LG3/l$c;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
