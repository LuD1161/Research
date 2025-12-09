.class public abstract Ll2/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ll2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll2/l;

    invoke-direct {v0}, Ll2/l;-><init>()V

    sput-object v0, Ll2/l$a;->a:Ll2/l;

    return-void
.end method
