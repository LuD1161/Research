.class public Lr/b$b;
.super Lr/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lr/b$c;Lr/b$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr/b$e;-><init>(Lr/b$c;Lr/b$c;)V

    return-void
.end method


# virtual methods
.method public d(Lr/b$c;)Lr/b$c;
    .locals 0

    iget-object p1, p1, Lr/b$c;->g:Lr/b$c;

    return-object p1
.end method

.method public e(Lr/b$c;)Lr/b$c;
    .locals 0

    iget-object p1, p1, Lr/b$c;->h:Lr/b$c;

    return-object p1
.end method
