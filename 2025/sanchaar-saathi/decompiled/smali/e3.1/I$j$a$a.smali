.class public final Le3/I$j$a$a;
.super Ln3/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I$j$a;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le3/I$j$a;


# direct methods
.method public constructor <init>(Le3/I$j$a;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$j$a$a;->j:Le3/I$j$a;

    invoke-direct {p0, p2}, Ln3/d;-><init>(Ll3/e;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le3/I$j$a$a;->h:Ljava/lang/Object;

    iget p1, p0, Le3/I$j$a$a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le3/I$j$a$a;->i:I

    iget-object p1, p0, Le3/I$j$a$a;->j:Le3/I$j$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le3/I$j$a;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
