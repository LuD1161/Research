.class public final LH0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LH0/c;

.field public static final b:LH0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH0/c;

    invoke-direct {v0}, LH0/c;-><init>()V

    sput-object v0, LH0/c;->a:LH0/c;

    sget-object v0, LH0/j;->g:LH0/j;

    sput-object v0, LH0/c;->b:LH0/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LH0/j;
    .locals 1

    sget-object v0, LH0/c;->b:LH0/j;

    return-object v0
.end method
